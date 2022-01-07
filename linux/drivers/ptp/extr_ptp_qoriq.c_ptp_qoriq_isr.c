
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ptp_qoriq_registers {TYPE_2__* ctrl_regs; TYPE_1__* alarm_regs; } ;
struct ptp_qoriq {int (* read ) (int *) ;int alarm_value; int alarm_interval; int (* write ) (int *,int) ;int clock; int lock; struct ptp_qoriq_registers regs; } ;
struct ptp_clock_event {int timestamp; int type; scalar_t__ index; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int tmr_tevent; int tmr_temask; } ;
struct TYPE_3__ {int tmr_alarm2_h; int tmr_alarm2_l; } ;


 int ALM2 ;
 int ALM2EN ;
 int ETS1 ;
 int ETS2 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PP1 ;
 int PTP_CLOCK_ALARM ;
 int PTP_CLOCK_PPS ;
 int extts_clean_up (struct ptp_qoriq*,int,int) ;
 int ptp_clock_event (int ,struct ptp_clock_event*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *,int) ;
 int stub4 (int *,int) ;
 int stub5 (int *) ;
 int stub6 (int *,int) ;
 int stub7 (int *,int) ;

irqreturn_t ptp_qoriq_isr(int irq, void *priv)
{
 struct ptp_qoriq *ptp_qoriq = priv;
 struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;
 struct ptp_clock_event event;
 u64 ns;
 u32 ack = 0, lo, hi, mask, val, irqs;

 spin_lock(&ptp_qoriq->lock);

 val = ptp_qoriq->read(&regs->ctrl_regs->tmr_tevent);
 mask = ptp_qoriq->read(&regs->ctrl_regs->tmr_temask);

 spin_unlock(&ptp_qoriq->lock);

 irqs = val & mask;

 if (irqs & ETS1) {
  ack |= ETS1;
  extts_clean_up(ptp_qoriq, 0, 1);
 }

 if (irqs & ETS2) {
  ack |= ETS2;
  extts_clean_up(ptp_qoriq, 1, 1);
 }

 if (irqs & ALM2) {
  ack |= ALM2;
  if (ptp_qoriq->alarm_value) {
   event.type = PTP_CLOCK_ALARM;
   event.index = 0;
   event.timestamp = ptp_qoriq->alarm_value;
   ptp_clock_event(ptp_qoriq->clock, &event);
  }
  if (ptp_qoriq->alarm_interval) {
   ns = ptp_qoriq->alarm_value + ptp_qoriq->alarm_interval;
   hi = ns >> 32;
   lo = ns & 0xffffffff;
   ptp_qoriq->write(&regs->alarm_regs->tmr_alarm2_l, lo);
   ptp_qoriq->write(&regs->alarm_regs->tmr_alarm2_h, hi);
   ptp_qoriq->alarm_value = ns;
  } else {
   spin_lock(&ptp_qoriq->lock);
   mask = ptp_qoriq->read(&regs->ctrl_regs->tmr_temask);
   mask &= ~ALM2EN;
   ptp_qoriq->write(&regs->ctrl_regs->tmr_temask, mask);
   spin_unlock(&ptp_qoriq->lock);
   ptp_qoriq->alarm_value = 0;
   ptp_qoriq->alarm_interval = 0;
  }
 }

 if (irqs & PP1) {
  ack |= PP1;
  event.type = PTP_CLOCK_PPS;
  ptp_clock_event(ptp_qoriq->clock, &event);
 }

 if (ack) {
  ptp_qoriq->write(&regs->ctrl_regs->tmr_tevent, ack);
  return IRQ_HANDLED;
 } else
  return IRQ_NONE;
}
