
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgi_w1_platform_data {int dev_id; } ;
struct TYPE_2__ {int dev_id; int touch_bit; int reset_bus; struct sgi_w1_device* data; } ;
struct sgi_w1_device {TYPE_1__ bus_master; int dev_id; int mcr; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct sgi_w1_platform_data* dev_get_platdata (int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct sgi_w1_device* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sgi_w1_device*) ;
 int sgi_w1_reset_bus ;
 int sgi_w1_touch_bit ;
 int strlcpy (int ,int ,int) ;
 int w1_add_master_device (TYPE_1__*) ;

__attribute__((used)) static int sgi_w1_probe(struct platform_device *pdev)
{
 struct sgi_w1_device *sdev;
 struct sgi_w1_platform_data *pdata;
 struct resource *res;

 sdev = devm_kzalloc(&pdev->dev, sizeof(struct sgi_w1_device),
       GFP_KERNEL);
 if (!sdev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 sdev->mcr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(sdev->mcr))
  return PTR_ERR(sdev->mcr);

 sdev->bus_master.data = sdev;
 sdev->bus_master.reset_bus = sgi_w1_reset_bus;
 sdev->bus_master.touch_bit = sgi_w1_touch_bit;

 pdata = dev_get_platdata(&pdev->dev);
 if (pdata) {
  strlcpy(sdev->dev_id, pdata->dev_id, sizeof(sdev->dev_id));
  sdev->bus_master.dev_id = sdev->dev_id;
 }

 platform_set_drvdata(pdev, sdev);

 return w1_add_master_device(&sdev->bus_master);
}
