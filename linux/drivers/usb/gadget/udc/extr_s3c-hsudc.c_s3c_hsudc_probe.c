
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct s3c_hsudc_ep {int dummy; } ;
struct TYPE_6__ {int speed; scalar_t__ is_a_peripheral; scalar_t__ is_otg; int * ep0; int name; int * ops; int max_speed; } ;
struct s3c_hsudc {int irq; int transceiver; int uclk; TYPE_2__ gadget; TYPE_1__* ep; int lock; int regs; TYPE_3__* supplies; void* pd; struct device* dev; } ;
struct s3c24xx_hsudc_platdata {int epnum; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int supply; } ;
struct TYPE_5__ {int ep; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int USB_PHY_TYPE_USB2 ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 void* dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct s3c_hsudc* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_3__*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct s3c_hsudc*) ;
 int disable_irq (int) ;
 int driver_name ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int s3c_hsudc_gadget_ops ;
 int s3c_hsudc_irq ;
 int s3c_hsudc_setup_ep (struct s3c_hsudc*) ;
 int * s3c_hsudc_supply_names ;
 int spin_lock_init (int *) ;
 int usb_add_gadget_udc (struct device*,TYPE_2__*) ;
 int usb_get_phy (int ) ;
 int usb_put_phy (int ) ;

__attribute__((used)) static int s3c_hsudc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct s3c_hsudc *hsudc;
 struct s3c24xx_hsudc_platdata *pd = dev_get_platdata(&pdev->dev);
 int ret, i;

 hsudc = devm_kzalloc(&pdev->dev, sizeof(struct s3c_hsudc) +
   sizeof(struct s3c_hsudc_ep) * pd->epnum,
   GFP_KERNEL);
 if (!hsudc)
  return -ENOMEM;

 platform_set_drvdata(pdev, dev);
 hsudc->dev = dev;
 hsudc->pd = dev_get_platdata(&pdev->dev);

 hsudc->transceiver = usb_get_phy(USB_PHY_TYPE_USB2);

 for (i = 0; i < ARRAY_SIZE(hsudc->supplies); i++)
  hsudc->supplies[i].supply = s3c_hsudc_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(hsudc->supplies),
     hsudc->supplies);
 if (ret != 0) {
  dev_err(dev, "failed to request supplies: %d\n", ret);
  goto err_supplies;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 hsudc->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hsudc->regs)) {
  ret = PTR_ERR(hsudc->regs);
  goto err_res;
 }

 spin_lock_init(&hsudc->lock);

 hsudc->gadget.max_speed = USB_SPEED_HIGH;
 hsudc->gadget.ops = &s3c_hsudc_gadget_ops;
 hsudc->gadget.name = dev_name(dev);
 hsudc->gadget.ep0 = &hsudc->ep[0].ep;
 hsudc->gadget.is_otg = 0;
 hsudc->gadget.is_a_peripheral = 0;
 hsudc->gadget.speed = USB_SPEED_UNKNOWN;

 s3c_hsudc_setup_ep(hsudc);

 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  goto err_res;
 hsudc->irq = ret;

 ret = devm_request_irq(&pdev->dev, hsudc->irq, s3c_hsudc_irq, 0,
    driver_name, hsudc);
 if (ret < 0) {
  dev_err(dev, "irq request failed\n");
  goto err_res;
 }

 hsudc->uclk = devm_clk_get(&pdev->dev, "usb-device");
 if (IS_ERR(hsudc->uclk)) {
  dev_err(dev, "failed to find usb-device clock source\n");
  ret = PTR_ERR(hsudc->uclk);
  goto err_res;
 }
 clk_enable(hsudc->uclk);

 local_irq_disable();

 disable_irq(hsudc->irq);
 local_irq_enable();

 ret = usb_add_gadget_udc(&pdev->dev, &hsudc->gadget);
 if (ret)
  goto err_add_udc;

 pm_runtime_enable(dev);

 return 0;
err_add_udc:
 clk_disable(hsudc->uclk);
err_res:
 if (!IS_ERR_OR_NULL(hsudc->transceiver))
  usb_put_phy(hsudc->transceiver);

err_supplies:
 return ret;
}
