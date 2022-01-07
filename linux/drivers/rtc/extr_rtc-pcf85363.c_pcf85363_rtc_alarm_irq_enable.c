
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85363 {int dummy; } ;
struct device {int dummy; } ;


 int _pcf85363_rtc_alarm_irq_enable (struct pcf85363*,unsigned int) ;
 struct pcf85363* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int pcf85363_rtc_alarm_irq_enable(struct device *dev,
      unsigned int enabled)
{
 struct pcf85363 *pcf85363 = dev_get_drvdata(dev);

 return _pcf85363_rtc_alarm_irq_enable(pcf85363, enabled);
}
