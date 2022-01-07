
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_8__ {int * parent; } ;
struct TYPE_6__ {TYPE_5__ dev; int max_speed; int * ops; int name; } ;
struct dummy {TYPE_1__ gadget; } ;
struct TYPE_7__ {scalar_t__ is_high_speed; scalar_t__ is_super_speed; } ;


 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_SUPER ;
 int dev_attr_function ;
 scalar_t__ dev_get_platdata (int *) ;
 int device_create_file (TYPE_5__*,int *) ;
 int dummy_ops ;
 int gadget_name ;
 int init_dummy_udc_hw (struct dummy*) ;
 int memzero_explicit (TYPE_1__*,int) ;
 TYPE_3__ mod_data ;
 int platform_set_drvdata (struct platform_device*,struct dummy*) ;
 int usb_add_gadget_udc (int *,TYPE_1__*) ;
 int usb_del_gadget_udc (TYPE_1__*) ;

__attribute__((used)) static int dummy_udc_probe(struct platform_device *pdev)
{
 struct dummy *dum;
 int rc;

 dum = *((void **)dev_get_platdata(&pdev->dev));

 memzero_explicit(&dum->gadget, sizeof(struct usb_gadget));
 dum->gadget.name = gadget_name;
 dum->gadget.ops = &dummy_ops;
 if (mod_data.is_super_speed)
  dum->gadget.max_speed = USB_SPEED_SUPER;
 else if (mod_data.is_high_speed)
  dum->gadget.max_speed = USB_SPEED_HIGH;
 else
  dum->gadget.max_speed = USB_SPEED_FULL;

 dum->gadget.dev.parent = &pdev->dev;
 init_dummy_udc_hw(dum);

 rc = usb_add_gadget_udc(&pdev->dev, &dum->gadget);
 if (rc < 0)
  goto err_udc;

 rc = device_create_file(&dum->gadget.dev, &dev_attr_function);
 if (rc < 0)
  goto err_dev;
 platform_set_drvdata(pdev, dum);
 return rc;

err_dev:
 usb_del_gadget_udc(&dum->gadget);
err_udc:
 return rc;
}
