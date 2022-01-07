
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_rtc {int pcf; int rtc_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PCF50633_IRQ_ALARM ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_to_pcf50633 (int ) ;
 struct pcf50633_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 int pcf50633_register_irq (int ,int ,int ,struct pcf50633_rtc*) ;
 int pcf50633_rtc_irq ;
 int pcf50633_rtc_ops ;
 int platform_set_drvdata (struct platform_device*,struct pcf50633_rtc*) ;

__attribute__((used)) static int pcf50633_rtc_probe(struct platform_device *pdev)
{
 struct pcf50633_rtc *rtc;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->pcf = dev_to_pcf50633(pdev->dev.parent);
 platform_set_drvdata(pdev, rtc);
 rtc->rtc_dev = devm_rtc_device_register(&pdev->dev, "pcf50633-rtc",
    &pcf50633_rtc_ops, THIS_MODULE);

 if (IS_ERR(rtc->rtc_dev))
  return PTR_ERR(rtc->rtc_dev);

 pcf50633_register_irq(rtc->pcf, PCF50633_IRQ_ALARM,
     pcf50633_rtc_irq, rtc);
 return 0;
}
