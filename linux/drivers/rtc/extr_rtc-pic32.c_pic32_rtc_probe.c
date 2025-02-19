
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct pic32_rtc_dev {scalar_t__ alarm_irq; TYPE_1__* clk; TYPE_1__* rtc; int alarm_lock; TYPE_1__* reg_base; } ;
struct TYPE_10__ {int max_user_freq; int range_max; int range_min; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int clk_disable (TYPE_1__*) ;
 int clk_disable_unprepare (TYPE_1__*) ;
 int clk_prepare_enable (TYPE_1__*) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int device_init_wakeup (int *,int) ;
 TYPE_1__* devm_clk_get (int *,int *) ;
 TYPE_1__* devm_ioremap_resource (int *,struct resource*) ;
 struct pic32_rtc_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct pic32_rtc_dev*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int pic32_rtc_alarmirq ;
 int pic32_rtc_enable (struct pic32_rtc_dev*,int) ;
 int pic32_rtc_setfreq (int *,int) ;
 int pic32_rtcops ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pic32_rtc_dev*) ;
 int rtc_register_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pic32_rtc_probe(struct platform_device *pdev)
{
 struct pic32_rtc_dev *pdata;
 struct resource *res;
 int ret;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 platform_set_drvdata(pdev, pdata);

 pdata->alarm_irq = platform_get_irq(pdev, 0);
 if (pdata->alarm_irq < 0)
  return pdata->alarm_irq;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pdata->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pdata->reg_base))
  return PTR_ERR(pdata->reg_base);

 pdata->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pdata->clk)) {
  dev_err(&pdev->dev, "failed to find rtc clock source\n");
  ret = PTR_ERR(pdata->clk);
  pdata->clk = ((void*)0);
  return ret;
 }

 spin_lock_init(&pdata->alarm_lock);

 clk_prepare_enable(pdata->clk);

 pic32_rtc_enable(pdata, 1);

 device_init_wakeup(&pdev->dev, 1);

 pdata->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(pdata->rtc))
  return PTR_ERR(pdata->rtc);

 pdata->rtc->ops = &pic32_rtcops;
 pdata->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 pdata->rtc->range_max = RTC_TIMESTAMP_END_2099;

 ret = rtc_register_device(pdata->rtc);
 if (ret)
  goto err_nortc;

 pdata->rtc->max_user_freq = 128;

 pic32_rtc_setfreq(&pdev->dev, 1);
 ret = devm_request_irq(&pdev->dev, pdata->alarm_irq,
          pic32_rtc_alarmirq, 0,
          dev_name(&pdev->dev), pdata);
 if (ret) {
  dev_err(&pdev->dev,
   "IRQ %d error %d\n", pdata->alarm_irq, ret);
  goto err_nortc;
 }

 clk_disable(pdata->clk);

 return 0;

err_nortc:
 pic32_rtc_enable(pdata, 0);
 clk_disable_unprepare(pdata->clk);

 return ret;
}
