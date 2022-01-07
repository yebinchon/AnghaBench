
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_test_data {unsigned int alarm_en; int alarm; } ;
struct device {int dummy; } ;


 int add_timer (int *) ;
 int del_timer (int *) ;
 struct rtc_test_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int test_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 struct rtc_test_data *rtd = dev_get_drvdata(dev);

 rtd->alarm_en = enable;
 if (enable)
  add_timer(&rtd->alarm);
 else
  del_timer(&rtd->alarm);

 return 0;
}
