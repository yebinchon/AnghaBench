
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_rtc_data {int dummy; } ;
struct device {int dummy; } ;


 struct mxc_rtc_data* dev_get_drvdata (struct device*) ;
 int mxc_rtc_alarm_irq_enable_locked (struct mxc_rtc_data*,unsigned int) ;
 int mxc_rtc_lock (struct mxc_rtc_data*) ;
 int mxc_rtc_unlock (struct mxc_rtc_data*) ;

__attribute__((used)) static int mxc_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 struct mxc_rtc_data *pdata = dev_get_drvdata(dev);
 int ret = mxc_rtc_lock(pdata);

 if (ret)
  return ret;

 mxc_rtc_alarm_irq_enable_locked(pdata, enable);
 return mxc_rtc_unlock(pdata);
}
