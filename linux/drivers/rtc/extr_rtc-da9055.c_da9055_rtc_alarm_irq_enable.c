
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct da9055_rtc {int dummy; } ;


 int da9055_rtc_enable_alarm (struct da9055_rtc*,unsigned int) ;
 struct da9055_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int da9055_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct da9055_rtc *rtc = dev_get_drvdata(dev);

 return da9055_rtc_enable_alarm(rtc, enabled);
}
