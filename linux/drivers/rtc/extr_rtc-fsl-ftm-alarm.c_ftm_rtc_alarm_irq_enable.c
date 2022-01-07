
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_rtc {int dummy; } ;
struct device {int dummy; } ;


 struct ftm_rtc* dev_get_drvdata (struct device*) ;
 int ftm_irq_disable (struct ftm_rtc*) ;
 int ftm_irq_enable (struct ftm_rtc*) ;

__attribute__((used)) static int ftm_rtc_alarm_irq_enable(struct device *dev,
  unsigned int enabled)
{
 struct ftm_rtc *rtc = dev_get_drvdata(dev);

 if (enabled)
  ftm_irq_enable(rtc);
 else
  ftm_irq_disable(rtc);

 return 0;
}
