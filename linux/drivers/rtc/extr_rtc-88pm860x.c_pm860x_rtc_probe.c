
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct rtc_time {int tm_year; int tm_mday; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mon; } ;
struct pm860x_rtc_pdata {int vrtc; int (* sync ) (unsigned long) ;} ;
struct pm860x_rtc_info {scalar_t__ irq; int vrtc; int calib_work; int i2c; int rtc_dev; int (* sync ) (unsigned long) ;TYPE_1__* dev; struct pm860x_chip* chip; } ;
struct pm860x_chip {scalar_t__ id; int dev; int companion; int client; } ;
struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ CHIP_PM8607 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int MEAS2_VRTC ;
 int PM8607_MEAS_EN2 ;
 int PM8607_RTC1 ;
 int PTR_ERR (int ) ;
 int REG0_ADDR ;
 int REG0_DATA ;
 int REG1_ADDR ;
 int REG1_DATA ;
 int REG2_ADDR ;
 int REG2_DATA ;
 int REG3_ADDR ;
 int REG3_DATA ;
 int RTC1_USE_XO ;
 int THIS_MODULE ;
 int VRTC_CALIB_INTERVAL ;
 int calibrate_vrtc_work ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct pm860x_chip* dev_get_drvdata (int ) ;
 struct pm860x_rtc_pdata* dev_get_platdata (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct pm860x_rtc_info*) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct pm860x_rtc_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct pm860x_rtc_info*) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int pm860x_page_reg_write (int ,int ,int ) ;
 scalar_t__ pm860x_rtc_dt_init (struct platform_device*,struct pm860x_rtc_info*) ;
 int pm860x_rtc_ops ;
 int pm860x_rtc_read_time (TYPE_1__*,struct rtc_time*) ;
 int pm860x_rtc_set_time (TYPE_1__*,struct rtc_time*) ;
 int pm860x_set_bits (int ,int ,int ,int ) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int rtc_update_handler ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (unsigned long) ;

__attribute__((used)) static int pm860x_rtc_probe(struct platform_device *pdev)
{
 struct pm860x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm860x_rtc_pdata *pdata = ((void*)0);
 struct pm860x_rtc_info *info;
 struct rtc_time tm;
 unsigned long ticks = 0;
 int ret;

 pdata = dev_get_platdata(&pdev->dev);

 info = devm_kzalloc(&pdev->dev, sizeof(struct pm860x_rtc_info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->irq = platform_get_irq(pdev, 0);
 if (info->irq < 0)
  return info->irq;

 info->chip = chip;
 info->i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
 info->dev = &pdev->dev;
 dev_set_drvdata(&pdev->dev, info);

 ret = devm_request_threaded_irq(&pdev->dev, info->irq, ((void*)0),
     rtc_update_handler, IRQF_ONESHOT, "rtc",
     info);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to request IRQ: #%d: %d\n",
   info->irq, ret);
  return ret;
 }


 pm860x_page_reg_write(info->i2c, REG0_ADDR, REG0_DATA);
 pm860x_page_reg_write(info->i2c, REG1_ADDR, REG1_DATA);
 pm860x_page_reg_write(info->i2c, REG2_ADDR, REG2_DATA);
 pm860x_page_reg_write(info->i2c, REG3_ADDR, REG3_DATA);

 ret = pm860x_rtc_read_time(&pdev->dev, &tm);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to read initial time.\n");
  return ret;
 }
 if ((tm.tm_year < 70) || (tm.tm_year > 138)) {
  tm.tm_year = 70;
  tm.tm_mon = 0;
  tm.tm_mday = 1;
  tm.tm_hour = 0;
  tm.tm_min = 0;
  tm.tm_sec = 0;
  ret = pm860x_rtc_set_time(&pdev->dev, &tm);
  if (ret < 0) {
   dev_err(&pdev->dev, "Failed to set initial time.\n");
   return ret;
  }
 }
 rtc_tm_to_time(&tm, &ticks);
 if (pm860x_rtc_dt_init(pdev, info)) {
  if (pdata && pdata->sync) {
   pdata->sync(ticks);
   info->sync = pdata->sync;
  }
 }

 info->rtc_dev = devm_rtc_device_register(&pdev->dev, "88pm860x-rtc",
         &pm860x_rtc_ops, THIS_MODULE);
 ret = PTR_ERR(info->rtc_dev);
 if (IS_ERR(info->rtc_dev)) {
  dev_err(&pdev->dev, "Failed to register RTC device: %d\n", ret);
  return ret;
 }





 pm860x_set_bits(info->i2c, PM8607_RTC1, RTC1_USE_XO, RTC1_USE_XO);
 device_init_wakeup(&pdev->dev, 1);

 return 0;
}
