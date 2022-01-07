
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct TYPE_4__ {TYPE_1__ dev; int max_speed; int * ops; int name; } ;
struct vudc {TYPE_2__ gadget; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GADGET_NAME ;
 int GFP_KERNEL ;
 int USB_SPEED_HIGH ;
 int cleanup_vudc_hw (struct vudc*) ;
 int init_vudc_hw (struct vudc*) ;
 int kfree (struct vudc*) ;
 struct vudc* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vudc*) ;
 int usb_add_gadget_udc (int *,TYPE_2__*) ;
 int vgadget_ops ;

int vudc_probe(struct platform_device *pdev)
{
 struct vudc *udc;
 int ret = -ENOMEM;

 udc = kzalloc(sizeof(*udc), GFP_KERNEL);
 if (!udc)
  goto out;

 udc->gadget.name = GADGET_NAME;
 udc->gadget.ops = &vgadget_ops;
 udc->gadget.max_speed = USB_SPEED_HIGH;
 udc->gadget.dev.parent = &pdev->dev;
 udc->pdev = pdev;

 ret = init_vudc_hw(udc);
 if (ret)
  goto err_init_vudc_hw;

 ret = usb_add_gadget_udc(&pdev->dev, &udc->gadget);
 if (ret < 0)
  goto err_add_udc;

 platform_set_drvdata(pdev, udc);

 return ret;

err_add_udc:
 cleanup_vudc_hw(udc);
err_init_vudc_hw:
 kfree(udc);
out:
 return ret;
}
