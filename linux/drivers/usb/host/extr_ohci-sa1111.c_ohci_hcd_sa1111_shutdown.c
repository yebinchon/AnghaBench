
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; int flags; } ;
struct sa1111_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct usb_hcd*) ;} ;


 int HCD_FLAG_HW_ACCESSIBLE ;
 struct usb_hcd* sa1111_get_drvdata (struct sa1111_dev*) ;
 int sa1111_stop_hc (struct sa1111_dev*) ;
 int stub1 (struct usb_hcd*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct sa1111_dev* to_sa1111_device (struct device*) ;

__attribute__((used)) static void ohci_hcd_sa1111_shutdown(struct device *_dev)
{
 struct sa1111_dev *dev = to_sa1111_device(_dev);
 struct usb_hcd *hcd = sa1111_get_drvdata(dev);

 if (test_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags)) {
  hcd->driver->shutdown(hcd);
  sa1111_stop_hc(dev);
 }
}
