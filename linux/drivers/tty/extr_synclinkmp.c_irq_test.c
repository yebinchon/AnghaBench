
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int port_num; int irq_occurred; int lock; int init_error; } ;
typedef TYPE_1__ SLMP_INFO ;


 scalar_t__ BIT4 ;
 scalar_t__ BIT6 ;
 int DiagStatus_IrqFailure ;
 unsigned char IER2 ;
 scalar_t__ TCONR ;
 scalar_t__ TEPR ;
 unsigned char TIMER0 ;
 unsigned char TIMER2 ;
 scalar_t__ TMCS ;
 int msleep_interruptible (int) ;
 int reset_port (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_reg (TYPE_1__*,unsigned char,int) ;
 int write_reg16 (TYPE_1__*,unsigned char,int) ;

__attribute__((used)) static bool irq_test(SLMP_INFO *info)
{
 unsigned long timeout;
 unsigned long flags;

 unsigned char timer = (info->port_num & 1) ? TIMER2 : TIMER0;

 spin_lock_irqsave(&info->lock,flags);
 reset_port(info);


 info->init_error = DiagStatus_IrqFailure;
 info->irq_occurred = 0;




 write_reg(info, IER2, (unsigned char)((info->port_num & 1) ? BIT6 : BIT4));

 write_reg(info, (unsigned char)(timer + TEPR), 0);
 write_reg16(info, (unsigned char)(timer + TCONR), 1);
 write_reg(info, (unsigned char)(timer + TMCS), 0x50);

 spin_unlock_irqrestore(&info->lock,flags);

 timeout=100;
 while( timeout-- && !info->irq_occurred ) {
  msleep_interruptible(10);
 }

 spin_lock_irqsave(&info->lock,flags);
 reset_port(info);
 spin_unlock_irqrestore(&info->lock,flags);

 return info->irq_occurred;
}
