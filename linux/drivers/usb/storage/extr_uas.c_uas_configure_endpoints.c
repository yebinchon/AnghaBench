
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {int desc; } ;
struct usb_device {scalar_t__ speed; } ;
struct uas_dev_info {int qdepth; int use_streams; TYPE_1__* intf; void* data_out_pipe; void* data_in_pipe; void* status_pipe; void* cmd_pipe; struct usb_device* udev; } ;
struct TYPE_2__ {int cur_altsetting; } ;


 int GFP_NOIO ;
 int MAX_CMNDS ;
 scalar_t__ USB_SPEED_SUPER ;
 int uas_find_endpoints (int ,struct usb_host_endpoint**) ;
 int usb_alloc_streams (TYPE_1__*,struct usb_host_endpoint**,int,int ,int ) ;
 int usb_endpoint_num (int *) ;
 void* usb_rcvbulkpipe (struct usb_device*,int ) ;
 void* usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int uas_configure_endpoints(struct uas_dev_info *devinfo)
{
 struct usb_host_endpoint *eps[4] = { };
 struct usb_device *udev = devinfo->udev;
 int r;

 r = uas_find_endpoints(devinfo->intf->cur_altsetting, eps);
 if (r)
  return r;

 devinfo->cmd_pipe = usb_sndbulkpipe(udev,
         usb_endpoint_num(&eps[0]->desc));
 devinfo->status_pipe = usb_rcvbulkpipe(udev,
         usb_endpoint_num(&eps[1]->desc));
 devinfo->data_in_pipe = usb_rcvbulkpipe(udev,
         usb_endpoint_num(&eps[2]->desc));
 devinfo->data_out_pipe = usb_sndbulkpipe(udev,
         usb_endpoint_num(&eps[3]->desc));

 if (udev->speed < USB_SPEED_SUPER) {
  devinfo->qdepth = 32;
  devinfo->use_streams = 0;
 } else {
  devinfo->qdepth = usb_alloc_streams(devinfo->intf, eps + 1,
          3, MAX_CMNDS, GFP_NOIO);
  if (devinfo->qdepth < 0)
   return devinfo->qdepth;
  devinfo->use_streams = 1;
 }

 return 0;
}
