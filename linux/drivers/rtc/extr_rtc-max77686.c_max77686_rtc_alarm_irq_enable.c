
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77686_rtc_info {int lock; } ;
struct device {int dummy; } ;


 struct max77686_rtc_info* dev_get_drvdata (struct device*) ;
 int max77686_rtc_start_alarm (struct max77686_rtc_info*) ;
 int max77686_rtc_stop_alarm (struct max77686_rtc_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max77686_rtc_alarm_irq_enable(struct device *dev,
      unsigned int enabled)
{
 struct max77686_rtc_info *info = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&info->lock);
 if (enabled)
  ret = max77686_rtc_start_alarm(info);
 else
  ret = max77686_rtc_stop_alarm(info);
 mutex_unlock(&info->lock);

 return ret;
}
