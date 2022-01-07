
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct timer_list {int dummy; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_4__ {int mbox_tmo; } ;
struct TYPE_3__ {int work_port_events; int work_port_lock; } ;


 int WORKER_MBOX_TMO ;
 struct lpfc_hba* from_timer (int ,struct timer_list*,int ) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 struct lpfc_hba* phba ;
 TYPE_2__ sli ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_mbox_timeout(struct timer_list *t)
{
 struct lpfc_hba *phba = from_timer(phba, t, sli.mbox_tmo);
 unsigned long iflag;
 uint32_t tmo_posted;

 spin_lock_irqsave(&phba->pport->work_port_lock, iflag);
 tmo_posted = phba->pport->work_port_events & WORKER_MBOX_TMO;
 if (!tmo_posted)
  phba->pport->work_port_events |= WORKER_MBOX_TMO;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflag);

 if (!tmo_posted)
  lpfc_worker_wake_up(phba);
 return;
}
