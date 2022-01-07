
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int name; int dev; } ;
struct goldfish_rtc {scalar_t__ irq; TYPE_1__* rtc; TYPE_1__* base; } ;
struct TYPE_6__ {int range_max; int * ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int NSEC_PER_SEC ;
 int PTR_ERR (TYPE_1__*) ;
 int U64_MAX ;
 TYPE_1__* devm_ioremap_resource (int *,struct resource*) ;
 struct goldfish_rtc* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,int ,struct goldfish_rtc*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int goldfish_rtc_interrupt ;
 int goldfish_rtc_ops ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct goldfish_rtc*) ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int goldfish_rtc_probe(struct platform_device *pdev)
{
 struct goldfish_rtc *rtcdrv;
 struct resource *r;
 int err;

 rtcdrv = devm_kzalloc(&pdev->dev, sizeof(*rtcdrv), GFP_KERNEL);
 if (!rtcdrv)
  return -ENOMEM;

 platform_set_drvdata(pdev, rtcdrv);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r)
  return -ENODEV;

 rtcdrv->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(rtcdrv->base))
  return -ENODEV;

 rtcdrv->irq = platform_get_irq(pdev, 0);
 if (rtcdrv->irq < 0)
  return -ENODEV;

 rtcdrv->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtcdrv->rtc))
  return PTR_ERR(rtcdrv->rtc);

 rtcdrv->rtc->ops = &goldfish_rtc_ops;
 rtcdrv->rtc->range_max = U64_MAX / NSEC_PER_SEC;

 err = devm_request_irq(&pdev->dev, rtcdrv->irq,
          goldfish_rtc_interrupt,
          0, pdev->name, rtcdrv);
 if (err)
  return err;

 return rtc_register_device(rtcdrv->rtc);
}
