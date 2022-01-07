
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_host_endpoint {int urb_list; } ;
struct usb_device {int dev; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct TYPE_3__ {int comm; } ;


 unsigned int USB_DIR_IN ;
 TYPE_1__* current ;
 int dev_warn (int *,char*,int ,int ,char*,unsigned int) ;
 int list_empty (int *) ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static void check_reset_of_active_ep(struct usb_device *udev,
  unsigned int epnum, char *ioctl_name)
{
 struct usb_host_endpoint **eps;
 struct usb_host_endpoint *ep;

 eps = (epnum & USB_DIR_IN) ? udev->ep_in : udev->ep_out;
 ep = eps[epnum & 0x0f];
 if (ep && !list_empty(&ep->urb_list))
  dev_warn(&udev->dev, "Process %d (%s) called USBDEVFS_%s for active endpoint 0x%02x\n",
    task_pid_nr(current), current->comm,
    ioctl_name, epnum);
}
