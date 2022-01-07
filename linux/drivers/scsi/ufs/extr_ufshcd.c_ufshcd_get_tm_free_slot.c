
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int nutmrs; int tm_slots_in_use; } ;


 int find_first_zero_bit (int *,int) ;
 scalar_t__ test_and_set_bit_lock (int,int *) ;

__attribute__((used)) static bool ufshcd_get_tm_free_slot(struct ufs_hba *hba, int *free_slot)
{
 int tag;
 bool ret = 0;

 if (!free_slot)
  goto out;

 do {
  tag = find_first_zero_bit(&hba->tm_slots_in_use, hba->nutmrs);
  if (tag >= hba->nutmrs)
   goto out;
 } while (test_and_set_bit_lock(tag, &hba->tm_slots_in_use));

 *free_slot = tag;
 ret = 1;
out:
 return ret;
}
