
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct sl811 {int addr_reg; int data_reg; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 struct sl811* hcd_to_sl811 (struct usb_hcd*) ;
 int iounmap (int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int remove_debug_file (struct sl811*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int
sl811h_remove(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct sl811 *sl811 = hcd_to_sl811(hcd);
 struct resource *res;

 remove_debug_file(sl811);
 usb_remove_hcd(hcd);


 res = platform_get_resource(dev, IORESOURCE_MEM, 1);
 if (res)
  iounmap(sl811->data_reg);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (res)
  iounmap(sl811->addr_reg);

 usb_put_hcd(hcd);
 return 0;
}
