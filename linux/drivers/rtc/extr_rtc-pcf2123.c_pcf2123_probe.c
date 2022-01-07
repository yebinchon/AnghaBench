
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int max_speed_hz; scalar_t__ irq; int dev; } ;
struct rtc_time {int dummy; } ;
struct rtc_device {int uie_unsupported; int set_start_time; int range_max; int range_min; int * ops; } ;
struct pcf2123_data {struct rtc_device* rtc; struct rtc_device* map; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int) ;
 int dev_set_drvdata (int *,struct pcf2123_data*) ;
 int device_init_wakeup (int *,int) ;
 struct pcf2123_data* devm_kzalloc (int *,int,int ) ;
 struct rtc_device* devm_regmap_init_spi (struct spi_device*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,int ,int *) ;
 struct rtc_device* devm_rtc_allocate_device (int *) ;
 TYPE_2__ pcf2123_driver ;
 int pcf2123_regmap_config ;
 int pcf2123_reset (int *) ;
 int pcf2123_rtc_irq ;
 int pcf2123_rtc_ops ;
 int pcf2123_rtc_read_time (int *,struct rtc_time*) ;
 int rtc_register_device (struct rtc_device*) ;

__attribute__((used)) static int pcf2123_probe(struct spi_device *spi)
{
 struct rtc_device *rtc;
 struct rtc_time tm;
 struct pcf2123_data *pcf2123;
 int ret = 0;

 pcf2123 = devm_kzalloc(&spi->dev, sizeof(struct pcf2123_data),
    GFP_KERNEL);
 if (!pcf2123)
  return -ENOMEM;

 dev_set_drvdata(&spi->dev, pcf2123);

 pcf2123->map = devm_regmap_init_spi(spi, &pcf2123_regmap_config);
 if (IS_ERR(pcf2123->map)) {
  dev_err(&spi->dev, "regmap init failed.\n");
  return PTR_ERR(pcf2123->map);
 }

 ret = pcf2123_rtc_read_time(&spi->dev, &tm);
 if (ret < 0) {
  ret = pcf2123_reset(&spi->dev);
  if (ret < 0) {
   dev_err(&spi->dev, "chip not found\n");
   return ret;
  }
 }

 dev_info(&spi->dev, "spiclk %u KHz.\n",
   (spi->max_speed_hz + 500) / 1000);


 rtc = devm_rtc_allocate_device(&spi->dev);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 pcf2123->rtc = rtc;


 if (spi->irq > 0) {
  ret = devm_request_threaded_irq(&spi->dev, spi->irq, ((void*)0),
    pcf2123_rtc_irq,
    IRQF_TRIGGER_LOW | IRQF_ONESHOT,
    pcf2123_driver.driver.name, &spi->dev);
  if (!ret)
   device_init_wakeup(&spi->dev, 1);
  else
   dev_err(&spi->dev, "could not request irq.\n");
 }





 rtc->uie_unsupported = 1;
 rtc->ops = &pcf2123_rtc_ops;
 rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 rtc->range_max = RTC_TIMESTAMP_END_2099;
 rtc->set_start_time = 1;

 ret = rtc_register_device(rtc);
 if (ret)
  return ret;

 return 0;
}
