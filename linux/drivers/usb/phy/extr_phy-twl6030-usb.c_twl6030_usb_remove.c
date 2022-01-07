
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_usb {int set_vbus_work; int usb3v3; int irq2; int irq1; int get_status_work; } ;
struct platform_device {int dummy; } ;


 int REG_INT_MSK_LINE_C ;
 int REG_INT_MSK_STS_C ;
 int TWL6030_USBOTG_INT_MASK ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,struct twl6030_usb*) ;
 struct twl6030_usb* platform_get_drvdata (struct platform_device*) ;
 int regulator_put (int ) ;
 int twl6030_interrupt_mask (int ,int ) ;

__attribute__((used)) static int twl6030_usb_remove(struct platform_device *pdev)
{
 struct twl6030_usb *twl = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&twl->get_status_work);
 twl6030_interrupt_mask(TWL6030_USBOTG_INT_MASK,
  REG_INT_MSK_LINE_C);
 twl6030_interrupt_mask(TWL6030_USBOTG_INT_MASK,
   REG_INT_MSK_STS_C);
 free_irq(twl->irq1, twl);
 free_irq(twl->irq2, twl);
 regulator_put(twl->usb3v3);
 cancel_work_sync(&twl->set_vbus_work);

 return 0;
}
