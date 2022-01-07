
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ wq; int (* lpfc_stop_port ) (struct lpfc_hba*) ;} ;


 int flush_workqueue (scalar_t__) ;
 int stub1 (struct lpfc_hba*) ;

void
lpfc_stop_port(struct lpfc_hba *phba)
{
 phba->lpfc_stop_port(phba);

 if (phba->wq)
  flush_workqueue(phba->wq);
}
