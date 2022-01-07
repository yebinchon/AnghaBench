
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct armada38x_rtc {int lock; TYPE_1__* data; } ;
typedef int s8 ;
struct TYPE_2__ {unsigned long (* read_rtc_reg ) (struct armada38x_rtc*,int ) ;} ;


 int RTC_CCR ;
 unsigned long RTC_CCR_MODE ;
 long armada38x_ppb_convert (long) ;
 struct armada38x_rtc* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct armada38x_rtc*,int ) ;

__attribute__((used)) static int armada38x_rtc_read_offset(struct device *dev, long *offset)
{
 struct armada38x_rtc *rtc = dev_get_drvdata(dev);
 unsigned long ccr, flags;
 long ppb_cor;

 spin_lock_irqsave(&rtc->lock, flags);
 ccr = rtc->data->read_rtc_reg(rtc, RTC_CCR);
 spin_unlock_irqrestore(&rtc->lock, flags);

 ppb_cor = (ccr & RTC_CCR_MODE ? 3815 : 954) * (s8)ccr;

 *offset = armada38x_ppb_convert(ppb_cor);

 return 0;
}
