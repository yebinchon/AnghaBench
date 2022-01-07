
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5m_rtc_info {int dummy; } ;
struct device {int dummy; } ;


 struct s5m_rtc_info* dev_get_drvdata (struct device*) ;
 int s5m_rtc_start_alarm (struct s5m_rtc_info*) ;
 int s5m_rtc_stop_alarm (struct s5m_rtc_info*) ;

__attribute__((used)) static int s5m_rtc_alarm_irq_enable(struct device *dev,
        unsigned int enabled)
{
 struct s5m_rtc_info *info = dev_get_drvdata(dev);

 if (enabled)
  return s5m_rtc_start_alarm(info);
 else
  return s5m_rtc_stop_alarm(info);
}
