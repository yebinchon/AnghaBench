
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptp_qoriq_registers {TYPE_1__* fiper_regs; } ;
struct ptp_qoriq {int tmr_fiper2; int (* write ) (int *,int ) ;int tmr_fiper1; struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int tmr_fiper2; int tmr_fiper1; } ;


 int set_alarm (struct ptp_qoriq*) ;
 int stub1 (int *,int ) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static void set_fipers(struct ptp_qoriq *ptp_qoriq)
{
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;

 set_alarm(ptp_qoriq);
 ptp_qoriq->write(&regs->fiper_regs->tmr_fiper1, ptp_qoriq->tmr_fiper1);
 ptp_qoriq->write(&regs->fiper_regs->tmr_fiper2, ptp_qoriq->tmr_fiper2);
}
