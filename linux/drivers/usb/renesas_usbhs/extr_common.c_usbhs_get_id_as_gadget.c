
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int USBHS_GADGET ;

int usbhs_get_id_as_gadget(struct platform_device *pdev)
{
 return USBHS_GADGET;
}
