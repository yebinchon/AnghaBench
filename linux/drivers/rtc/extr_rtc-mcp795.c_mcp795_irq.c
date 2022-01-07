
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct mutex {int dummy; } ;
struct rtc_device {struct mutex ops_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int dev_err (int *,char*,int) ;
 int mcp795_update_alarm (int *,int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int rtc_update_irq (struct rtc_device*,int,int) ;
 struct rtc_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static irqreturn_t mcp795_irq(int irq, void *data)
{
 struct spi_device *spi = data;
 struct rtc_device *rtc = spi_get_drvdata(spi);
 struct mutex *lock = &rtc->ops_lock;
 int ret;

 mutex_lock(lock);





 ret = mcp795_update_alarm(&spi->dev, 0);
 if (ret)
  dev_err(&spi->dev,
   "Failed to disable alarm in IRQ (ret=%d)\n", ret);
 rtc_update_irq(rtc, 1, RTC_AF | RTC_IRQF);

 mutex_unlock(lock);

 return IRQ_HANDLED;
}
