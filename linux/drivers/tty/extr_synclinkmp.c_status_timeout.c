
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned char u16 ;
struct timer_list {int dummy; } ;
struct TYPE_6__ {unsigned char old_signals; unsigned char serial_signals; int status_timer; int lock; } ;
typedef TYPE_1__ SLMP_INFO ;


 unsigned char MISCSTATUS_CTS_LATCHED ;
 unsigned char MISCSTATUS_DCD_LATCHED ;
 unsigned char MISCSTATUS_DSR_LATCHED ;
 unsigned char MISCSTATUS_RI_LATCHED ;
 unsigned char SerialSignal_CTS ;
 unsigned char SerialSignal_DCD ;
 unsigned char SerialSignal_DSR ;
 unsigned char SerialSignal_RI ;
 TYPE_1__* from_timer (int ,struct timer_list*,int ) ;
 int get_signals (TYPE_1__*) ;
 TYPE_1__* info ;
 int isr_io_pin (TYPE_1__*,unsigned char) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int status_timer ;

__attribute__((used)) static void status_timeout(struct timer_list *t)
{
 u16 status = 0;
 SLMP_INFO *info = from_timer(info, t, status_timer);
 unsigned long flags;
 unsigned char delta;


 spin_lock_irqsave(&info->lock,flags);
 get_signals(info);
 spin_unlock_irqrestore(&info->lock,flags);



 delta = info->old_signals ^ info->serial_signals;
 info->old_signals = info->serial_signals;

 if (delta & SerialSignal_DSR)
  status |= MISCSTATUS_DSR_LATCHED|(info->serial_signals&SerialSignal_DSR);

 if (delta & SerialSignal_RI)
  status |= MISCSTATUS_RI_LATCHED|(info->serial_signals&SerialSignal_RI);

 if (delta & SerialSignal_DCD)
  status |= MISCSTATUS_DCD_LATCHED|(info->serial_signals&SerialSignal_DCD);

 if (delta & SerialSignal_CTS)
  status |= MISCSTATUS_CTS_LATCHED|(info->serial_signals&SerialSignal_CTS);

 if (status)
  isr_io_pin(info,status);

 mod_timer(&info->status_timer, jiffies + msecs_to_jiffies(10));
}
