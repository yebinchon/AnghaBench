
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_rtc_info {int lock; } ;
struct device {int dummy; } ;


 struct max8997_rtc_info* dev_get_drvdata (struct device*) ;
 int max8997_rtc_start_alarm (struct max8997_rtc_info*) ;
 int max8997_rtc_stop_alarm (struct max8997_rtc_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max8997_rtc_alarm_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct max8997_rtc_info *info = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&info->lock);
 if (enabled)
  ret = max8997_rtc_start_alarm(info);
 else
  ret = max8997_rtc_stop_alarm(info);
 mutex_unlock(&info->lock);

 return ret;
}
