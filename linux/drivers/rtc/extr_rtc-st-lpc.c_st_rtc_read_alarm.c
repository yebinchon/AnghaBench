
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {int lock; int alarm; } ;
struct rtc_wkalrm {int dummy; } ;
struct device {int dummy; } ;


 struct st_rtc* dev_get_drvdata (struct device*) ;
 int memcpy (struct rtc_wkalrm*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int st_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct st_rtc *rtc = dev_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&rtc->lock, flags);

 memcpy(wkalrm, &rtc->alarm, sizeof(struct rtc_wkalrm));

 spin_unlock_irqrestore(&rtc->lock, flags);

 return 0;
}
