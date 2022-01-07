
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct dummy {TYPE_1__ gadget; } ;


 int dev_attr_function ;
 int device_remove_file (int *,int *) ;
 struct dummy* platform_get_drvdata (struct platform_device*) ;
 int usb_del_gadget_udc (TYPE_1__*) ;

__attribute__((used)) static int dummy_udc_remove(struct platform_device *pdev)
{
 struct dummy *dum = platform_get_drvdata(pdev);

 device_remove_file(&dum->gadget.dev, &dev_attr_function);
 usb_del_gadget_udc(&dum->gadget);
 return 0;
}
