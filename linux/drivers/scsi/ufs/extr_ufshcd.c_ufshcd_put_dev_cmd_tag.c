
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int lrb_in_use; } ;


 int clear_bit_unlock (int,int *) ;

__attribute__((used)) static inline void ufshcd_put_dev_cmd_tag(struct ufs_hba *hba, int tag)
{
 clear_bit_unlock(tag, &hba->lrb_in_use);
}
