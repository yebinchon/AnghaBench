
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbip_iso_packet_descriptor {int dummy; } ;
struct usbip_device {scalar_t__ side; int tcp_socket; } ;
struct urb {int number_of_packets; int actual_length; TYPE_1__* dev; TYPE_2__* iso_frame_desc; int pipe; } ;
struct TYPE_4__ {scalar_t__ actual_length; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int SDEV_EVENT_ERROR_TCP ;
 scalar_t__ USBIP_STUB ;
 scalar_t__ USBIP_VUDC ;
 int VDEV_EVENT_ERROR_TCP ;
 int dev_err (int *,char*,int,...) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int usb_pipeisoc (int ) ;
 int usbip_event_add (struct usbip_device*,int ) ;
 int usbip_iso_packet_correct_endian (struct usbip_iso_packet_descriptor*,int ) ;
 int usbip_pack_iso (struct usbip_iso_packet_descriptor*,TYPE_2__*,int ) ;
 int usbip_recv (int ,void*,int) ;

int usbip_recv_iso(struct usbip_device *ud, struct urb *urb)
{
 void *buff;
 struct usbip_iso_packet_descriptor *iso;
 int np = urb->number_of_packets;
 int size = np * sizeof(*iso);
 int i;
 int ret;
 int total_length = 0;

 if (!usb_pipeisoc(urb->pipe))
  return 0;


 if (np == 0)
  return 0;

 buff = kzalloc(size, GFP_KERNEL);
 if (!buff)
  return -ENOMEM;

 ret = usbip_recv(ud->tcp_socket, buff, size);
 if (ret != size) {
  dev_err(&urb->dev->dev, "recv iso_frame_descriptor, %d\n",
   ret);
  kfree(buff);

  if (ud->side == USBIP_STUB || ud->side == USBIP_VUDC)
   usbip_event_add(ud, SDEV_EVENT_ERROR_TCP);
  else
   usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);

  return -EPIPE;
 }

 iso = (struct usbip_iso_packet_descriptor *) buff;
 for (i = 0; i < np; i++) {
  usbip_iso_packet_correct_endian(&iso[i], 0);
  usbip_pack_iso(&iso[i], &urb->iso_frame_desc[i], 0);
  total_length += urb->iso_frame_desc[i].actual_length;
 }

 kfree(buff);

 if (total_length != urb->actual_length) {
  dev_err(&urb->dev->dev,
   "total length of iso packets %d not equal to actual length of buffer %d\n",
   total_length, urb->actual_length);

  if (ud->side == USBIP_STUB || ud->side == USBIP_VUDC)
   usbip_event_add(ud, SDEV_EVENT_ERROR_TCP);
  else
   usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);

  return -EPIPE;
 }

 return ret;
}
