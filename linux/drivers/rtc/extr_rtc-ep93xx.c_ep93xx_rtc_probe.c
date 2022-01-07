
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct ep93xx_rtc {TYPE_1__* rtc; TYPE_1__* mmio_base; } ;
struct TYPE_7__ {int range_max; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int U32_MAX ;
 TYPE_1__* devm_ioremap_resource (int *,struct resource*) ;
 struct ep93xx_rtc* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int ep93xx_rtc_ops ;
 int ep93xx_rtc_sysfs_files ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ep93xx_rtc*) ;
 int rtc_add_group (TYPE_1__*,int *) ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int ep93xx_rtc_probe(struct platform_device *pdev)
{
 struct ep93xx_rtc *ep93xx_rtc;
 struct resource *res;
 int err;

 ep93xx_rtc = devm_kzalloc(&pdev->dev, sizeof(*ep93xx_rtc), GFP_KERNEL);
 if (!ep93xx_rtc)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ep93xx_rtc->mmio_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ep93xx_rtc->mmio_base))
  return PTR_ERR(ep93xx_rtc->mmio_base);

 platform_set_drvdata(pdev, ep93xx_rtc);

 ep93xx_rtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(ep93xx_rtc->rtc))
  return PTR_ERR(ep93xx_rtc->rtc);

 ep93xx_rtc->rtc->ops = &ep93xx_rtc_ops;
 ep93xx_rtc->rtc->range_max = U32_MAX;

 err = rtc_add_group(ep93xx_rtc->rtc, &ep93xx_rtc_sysfs_files);
 if (err)
  return err;

 return rtc_register_device(ep93xx_rtc->rtc);
}
