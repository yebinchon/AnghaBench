
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int dev_attr_urbs ;
 int dev_info (int ,char*) ;
 int device_remove_file (int ,int *) ;
 int dummy_dev (int ) ;
 int hcd_to_dummy_hcd (struct usb_hcd*) ;

__attribute__((used)) static void dummy_stop(struct usb_hcd *hcd)
{
 device_remove_file(dummy_dev(hcd_to_dummy_hcd(hcd)), &dev_attr_urbs);
 dev_info(dummy_dev(hcd_to_dummy_hcd(hcd)), "stopped\n");
}
