
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int dummy; } ;
struct usb_device {int dummy; } ;
struct uas_dev_info {int intf; int data_out_pipe; int data_in_pipe; int status_pipe; struct usb_device* udev; } ;


 int GFP_NOIO ;
 int usb_free_streams (int ,struct usb_host_endpoint**,int,int ) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,int ) ;

__attribute__((used)) static void uas_free_streams(struct uas_dev_info *devinfo)
{
 struct usb_device *udev = devinfo->udev;
 struct usb_host_endpoint *eps[3];

 eps[0] = usb_pipe_endpoint(udev, devinfo->status_pipe);
 eps[1] = usb_pipe_endpoint(udev, devinfo->data_in_pipe);
 eps[2] = usb_pipe_endpoint(udev, devinfo->data_out_pipe);
 usb_free_streams(devinfo->intf, eps, 3, GFP_NOIO);
}
