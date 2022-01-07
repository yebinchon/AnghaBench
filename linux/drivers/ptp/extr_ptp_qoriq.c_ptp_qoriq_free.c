
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptp_qoriq_registers {TYPE_1__* ctrl_regs; } ;
struct ptp_qoriq {int irq; int base; int clock; int (* write ) (int *,int ) ;struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int tmr_ctrl; int tmr_temask; } ;


 int free_irq (int ,struct ptp_qoriq*) ;
 int iounmap (int ) ;
 int ptp_clock_unregister (int ) ;
 int ptp_qoriq_remove_debugfs (struct ptp_qoriq*) ;
 int stub1 (int *,int ) ;
 int stub2 (int *,int ) ;

void ptp_qoriq_free(struct ptp_qoriq *ptp_qoriq)
{
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;

 ptp_qoriq->write(&regs->ctrl_regs->tmr_temask, 0);
 ptp_qoriq->write(&regs->ctrl_regs->tmr_ctrl, 0);

 ptp_qoriq_remove_debugfs(ptp_qoriq);
 ptp_clock_unregister(ptp_qoriq->clock);
 iounmap(ptp_qoriq->base);
 free_irq(ptp_qoriq->irq, ptp_qoriq);
}
