
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct octeon_hcd {int lock; } ;


 int cvmx_usb_shutdown (struct octeon_hcd*) ;
 int dev_dbg (struct device*,char*,int) ;
 struct usb_hcd* dev_get_drvdata (struct device*) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int octeon_usb_remove(struct platform_device *pdev)
{
 int status;
 struct device *dev = &pdev->dev;
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 struct octeon_hcd *usb = hcd_to_octeon(hcd);
 unsigned long flags;

 usb_remove_hcd(hcd);
 spin_lock_irqsave(&usb->lock, flags);
 status = cvmx_usb_shutdown(usb);
 spin_unlock_irqrestore(&usb->lock, flags);
 if (status)
  dev_dbg(dev, "USB shutdown failed with %d\n", status);

 usb_put_hcd(hcd);

 return 0;
}
