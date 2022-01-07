
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ptp_qoriq_registers {TYPE_1__* ctrl_regs; } ;
struct ptp_qoriq {int (* write ) (int *,int) ;struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int tmr_cnt_h; int tmr_cnt_l; } ;


 int stub1 (int *,int) ;
 int stub2 (int *,int) ;

__attribute__((used)) static void tmr_cnt_write(struct ptp_qoriq *ptp_qoriq, u64 ns)
{
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;
 u32 hi = ns >> 32;
 u32 lo = ns & 0xffffffff;

 ptp_qoriq->write(&regs->ctrl_regs->tmr_cnt_l, lo);
 ptp_qoriq->write(&regs->ctrl_regs->tmr_cnt_h, hi);
}
