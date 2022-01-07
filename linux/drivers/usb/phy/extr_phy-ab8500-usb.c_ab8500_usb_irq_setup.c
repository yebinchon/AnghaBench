
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ab8500_usb {int flags; int dev; } ;


 int AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ ;
 int AB8500_USB_FLAG_USE_LINK_STATUS_IRQ ;
 int AB8500_USB_FLAG_USE_VBUS_DET_IRQ ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int ab8500_usb_disconnect_irq ;
 int ab8500_usb_link_status_irq ;
 int dev_err (int ,char*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,char*,struct ab8500_usb*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;

__attribute__((used)) static int ab8500_usb_irq_setup(struct platform_device *pdev,
  struct ab8500_usb *ab)
{
 int err;
 int irq;

 if (ab->flags & AB8500_USB_FLAG_USE_LINK_STATUS_IRQ) {
  irq = platform_get_irq_byname(pdev, "USB_LINK_STATUS");
  if (irq < 0)
   return irq;
  err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
    ab8500_usb_link_status_irq,
    IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
    "usb-link-status", ab);
  if (err < 0) {
   dev_err(ab->dev, "request_irq failed for link status irq\n");
   return err;
  }
 }

 if (ab->flags & AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ) {
  irq = platform_get_irq_byname(pdev, "ID_WAKEUP_F");
  if (irq < 0)
   return irq;
  err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
    ab8500_usb_disconnect_irq,
    IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
    "usb-id-fall", ab);
  if (err < 0) {
   dev_err(ab->dev, "request_irq failed for ID fall irq\n");
   return err;
  }
 }

 if (ab->flags & AB8500_USB_FLAG_USE_VBUS_DET_IRQ) {
  irq = platform_get_irq_byname(pdev, "VBUS_DET_F");
  if (irq < 0)
   return irq;
  err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
    ab8500_usb_disconnect_irq,
    IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
    "usb-vbus-fall", ab);
  if (err < 0) {
   dev_err(ab->dev, "request_irq failed for Vbus fall irq\n");
   return err;
  }
 }

 return 0;
}
