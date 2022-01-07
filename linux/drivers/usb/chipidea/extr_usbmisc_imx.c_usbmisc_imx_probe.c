
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbmisc_ops {int dummy; } ;
struct platform_device {int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct imx_usbmisc {struct usbmisc_ops const* ops; int base; int lock; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct imx_usbmisc* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_set_drvdata (struct platform_device*,struct imx_usbmisc*) ;
 int spin_lock_init (int *) ;
 int usbmisc_imx_dt_ids ;

__attribute__((used)) static int usbmisc_imx_probe(struct platform_device *pdev)
{
 struct imx_usbmisc *data;
 const struct of_device_id *of_id;

 of_id = of_match_device(usbmisc_imx_dt_ids, &pdev->dev);
 if (!of_id)
  return -ENODEV;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 spin_lock_init(&data->lock);

 data->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(data->base))
  return PTR_ERR(data->base);

 data->ops = (const struct usbmisc_ops *)of_id->data;
 platform_set_drvdata(pdev, data);

 return 0;
}
