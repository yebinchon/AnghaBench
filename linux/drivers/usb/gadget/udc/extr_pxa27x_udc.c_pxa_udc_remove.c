
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int clk; int * transceiver; int gadget; } ;
struct platform_device {int dummy; } ;


 int IS_ERR_OR_NULL (int *) ;
 int clk_unprepare (int ) ;
 struct pxa_udc* platform_get_drvdata (struct platform_device*) ;
 int pxa27x_udc_phy ;
 int pxa_cleanup_debugfs (struct pxa_udc*) ;
 int * the_controller ;
 int usb_del_gadget_udc (int *) ;
 int usb_put_phy (int *) ;
 int usb_unregister_notifier (int *,int *) ;

__attribute__((used)) static int pxa_udc_remove(struct platform_device *_dev)
{
 struct pxa_udc *udc = platform_get_drvdata(_dev);

 usb_del_gadget_udc(&udc->gadget);
 pxa_cleanup_debugfs(udc);

 if (!IS_ERR_OR_NULL(udc->transceiver)) {
  usb_unregister_notifier(udc->transceiver, &pxa27x_udc_phy);
  usb_put_phy(udc->transceiver);
 }

 udc->transceiver = ((void*)0);
 the_controller = ((void*)0);
 clk_unprepare(udc->clk);

 return 0;
}
