
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int tm_slots_in_use; } ;


 int clear_bit_unlock (int,int *) ;

__attribute__((used)) static inline void ufshcd_put_tm_slot(struct ufs_hba *hba, int slot)
{
 clear_bit_unlock(slot, &hba->tm_slots_in_use);
}
