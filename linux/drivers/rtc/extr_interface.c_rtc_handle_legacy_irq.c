
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int irq_data; int async_queue; int irq_queue; int irq_lock; } ;


 int POLL_IN ;
 int RTC_IRQF ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void rtc_handle_legacy_irq(struct rtc_device *rtc, int num, int mode)
{
 unsigned long flags;


 spin_lock_irqsave(&rtc->irq_lock, flags);
 rtc->irq_data = (rtc->irq_data + (num << 8)) | (RTC_IRQF | mode);
 spin_unlock_irqrestore(&rtc->irq_lock, flags);

 wake_up_interruptible(&rtc->irq_queue);
 kill_fasync(&rtc->async_queue, SIGIO, POLL_IN);
}
