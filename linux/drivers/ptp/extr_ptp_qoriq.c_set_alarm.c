
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ptp_qoriq_registers {TYPE_1__* alarm_regs; } ;
struct ptp_qoriq {int (* write ) (int *,int) ;scalar_t__ tclk_period; struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int tmr_alarm1_h; int tmr_alarm1_l; } ;


 unsigned long long div_u64 (int,unsigned long) ;
 int stub1 (int *,int) ;
 int stub2 (int *,int) ;
 int tmr_cnt_read (struct ptp_qoriq*) ;

__attribute__((used)) static void set_alarm(struct ptp_qoriq *ptp_qoriq)
{
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;
 u64 ns;
 u32 lo, hi;

 ns = tmr_cnt_read(ptp_qoriq) + 1500000000ULL;
 ns = div_u64(ns, 1000000000UL) * 1000000000ULL;
 ns -= ptp_qoriq->tclk_period;
 hi = ns >> 32;
 lo = ns & 0xffffffff;
 ptp_qoriq->write(&regs->alarm_regs->tmr_alarm1_l, lo);
 ptp_qoriq->write(&regs->alarm_regs->tmr_alarm1_h, hi);
}
