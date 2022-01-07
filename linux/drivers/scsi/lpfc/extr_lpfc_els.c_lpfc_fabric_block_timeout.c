
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timer_list {int dummy; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_2__ {int work_port_events; int work_port_lock; } ;


 int WORKER_FABRIC_BLOCK_TMO ;
 int fabric_block_timer ;
 struct lpfc_hba* from_timer (int ,struct timer_list*,int ) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 struct lpfc_hba* phba ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_fabric_block_timeout(struct timer_list *t)
{
 struct lpfc_hba *phba = from_timer(phba, t, fabric_block_timer);
 unsigned long iflags;
 uint32_t tmo_posted;

 spin_lock_irqsave(&phba->pport->work_port_lock, iflags);
 tmo_posted = phba->pport->work_port_events & WORKER_FABRIC_BLOCK_TMO;
 if (!tmo_posted)
  phba->pport->work_port_events |= WORKER_FABRIC_BLOCK_TMO;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflags);

 if (!tmo_posted)
  lpfc_worker_wake_up(phba);
 return;
}
