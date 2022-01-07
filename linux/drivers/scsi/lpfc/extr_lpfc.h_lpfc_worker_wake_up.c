
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int work_waitq; int data_flags; } ;


 int LPFC_DATA_READY ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
lpfc_worker_wake_up(struct lpfc_hba *phba)
{

 set_bit(LPFC_DATA_READY, &phba->data_flags);


 wake_up(&phba->work_waitq);
 return;
}
