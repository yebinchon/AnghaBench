
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int bit_flags; } ;


 int FABRIC_COMANDS_BLOCKED ;
 int clear_bit (int ,int *) ;
 int lpfc_resume_fabric_iocbs (struct lpfc_hba*) ;

void
lpfc_unblock_fabric_iocbs(struct lpfc_hba *phba)
{
 clear_bit(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);

 lpfc_resume_fabric_iocbs(phba);
 return;
}
