
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_rtc_dev {scalar_t__ irq; int rtc; int losc; scalar_t__ base; int * dev; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ SUN6I_ALARM_CONFIG ;
 scalar_t__ SUN6I_ALRM1_EN ;
 scalar_t__ SUN6I_ALRM1_IRQ_EN ;
 scalar_t__ SUN6I_ALRM1_IRQ_STA ;
 int SUN6I_ALRM1_IRQ_STA_WEEK_IRQ_PEND ;
 scalar_t__ SUN6I_ALRM_COUNTER ;
 scalar_t__ SUN6I_ALRM_EN ;
 scalar_t__ SUN6I_ALRM_IRQ_EN ;
 scalar_t__ SUN6I_ALRM_IRQ_STA ;
 int SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND ;
 int THIS_MODULE ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int device_init_wakeup (int *,int) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct sun6i_rtc_dev*) ;
 int devm_rtc_device_register (int *,char*,int *,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sun6i_rtc_dev*) ;
 struct sun6i_rtc_dev* sun6i_rtc ;
 int sun6i_rtc_alarmirq ;
 int sun6i_rtc_ops ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun6i_rtc_probe(struct platform_device *pdev)
{
 struct sun6i_rtc_dev *chip = sun6i_rtc;
 int ret;

 if (!chip)
  return -ENODEV;

 platform_set_drvdata(pdev, chip);
 chip->dev = &pdev->dev;

 chip->irq = platform_get_irq(pdev, 0);
 if (chip->irq < 0)
  return chip->irq;

 ret = devm_request_irq(&pdev->dev, chip->irq, sun6i_rtc_alarmirq,
          0, dev_name(&pdev->dev), chip);
 if (ret) {
  dev_err(&pdev->dev, "Could not request IRQ\n");
  return ret;
 }


 writel(0, chip->base + SUN6I_ALRM_COUNTER);


 writel(0, chip->base + SUN6I_ALRM_EN);


 writel(0, chip->base + SUN6I_ALRM_IRQ_EN);


 writel(0, chip->base + SUN6I_ALRM1_EN);


 writel(0, chip->base + SUN6I_ALRM1_IRQ_EN);


 writel(SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND,
        chip->base + SUN6I_ALRM_IRQ_STA);


 writel(SUN6I_ALRM1_IRQ_STA_WEEK_IRQ_PEND,
        chip->base + SUN6I_ALRM1_IRQ_STA);


 writel(0, chip->base + SUN6I_ALARM_CONFIG);

 clk_prepare_enable(chip->losc);

 device_init_wakeup(&pdev->dev, 1);

 chip->rtc = devm_rtc_device_register(&pdev->dev, "rtc-sun6i",
          &sun6i_rtc_ops, THIS_MODULE);
 if (IS_ERR(chip->rtc)) {
  dev_err(&pdev->dev, "unable to register device\n");
  return PTR_ERR(chip->rtc);
 }

 dev_info(&pdev->dev, "RTC enabled\n");

 return 0;
}
