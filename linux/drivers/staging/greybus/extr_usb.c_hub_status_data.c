
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;



__attribute__((used)) static int hub_status_data(struct usb_hcd *hcd, char *buf)
{
 return 0;
}
