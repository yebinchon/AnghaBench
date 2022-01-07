
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct lpfc_hba {TYPE_1__* pport; int hba_flag; } ;
struct TYPE_2__ {int load_flag; int work_port_lock; } ;


 int FC_UNLOADING ;
 int HBA_RRQ_ACTIVE ;
 struct lpfc_hba* from_timer (struct lpfc_hba*,struct timer_list*,int ) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int rrq_tmr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_rrq_timeout(struct timer_list *t)
{
 struct lpfc_hba *phba;
 unsigned long iflag;

 phba = from_timer(phba, t, rrq_tmr);
 spin_lock_irqsave(&phba->pport->work_port_lock, iflag);
 if (!(phba->pport->load_flag & FC_UNLOADING))
  phba->hba_flag |= HBA_RRQ_ACTIVE;
 else
  phba->hba_flag &= ~HBA_RRQ_ACTIVE;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflag);

 if (!(phba->pport->load_flag & FC_UNLOADING))
  lpfc_worker_wake_up(phba);
}
