
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; } ;
struct sa1111_dev {int dummy; } ;


 int release_mem_region (int ,int ) ;
 struct usb_hcd* sa1111_get_drvdata (struct sa1111_dev*) ;
 int sa1111_stop_hc (struct sa1111_dev*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_sa1111_remove(struct sa1111_dev *dev)
{
 struct usb_hcd *hcd = sa1111_get_drvdata(dev);

 usb_remove_hcd(hcd);
 sa1111_stop_hc(dev);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);

 return 0;
}
