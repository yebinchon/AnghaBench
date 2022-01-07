
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {unsigned long lrb_in_use; int nutrs; } ;


 int find_last_bit (unsigned long*,int) ;
 scalar_t__ test_and_set_bit_lock (int,unsigned long*) ;

__attribute__((used)) static bool ufshcd_get_dev_cmd_tag(struct ufs_hba *hba, int *tag_out)
{
 int tag;
 bool ret = 0;
 unsigned long tmp;

 if (!tag_out)
  goto out;

 do {
  tmp = ~hba->lrb_in_use;
  tag = find_last_bit(&tmp, hba->nutrs);
  if (tag >= hba->nutrs)
   goto out;
 } while (test_and_set_bit_lock(tag, &hba->lrb_in_use));

 *tag_out = tag;
 ret = 1;
out:
 return ret;
}
