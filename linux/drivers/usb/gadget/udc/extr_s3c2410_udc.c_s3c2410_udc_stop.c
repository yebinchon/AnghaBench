
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct s3c2410_udc {int * driver; } ;


 int s3c2410_udc_disable (struct s3c2410_udc*) ;
 struct s3c2410_udc* to_s3c2410 (struct usb_gadget*) ;

__attribute__((used)) static int s3c2410_udc_stop(struct usb_gadget *g)
{
 struct s3c2410_udc *udc = to_s3c2410(g);

 udc->driver = ((void*)0);


 s3c2410_udc_disable(udc);

 return 0;
}
