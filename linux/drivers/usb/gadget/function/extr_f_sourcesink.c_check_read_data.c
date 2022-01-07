
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct usb_request {unsigned int actual; int * buf; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_5__ {TYPE_3__* config; } ;
struct f_sourcesink {int pattern; TYPE_4__* out_ep; TYPE_1__ function; } ;
struct TYPE_8__ {TYPE_2__* desc; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;
struct TYPE_6__ {int wMaxPacketSize; } ;


 int EINVAL ;
 int ERROR (struct usb_composite_dev*,char*,unsigned int,int ) ;
 int le16_to_cpu (int ) ;
 int usb_ep_set_halt (TYPE_4__*) ;

__attribute__((used)) static int check_read_data(struct f_sourcesink *ss, struct usb_request *req)
{
 unsigned i;
 u8 *buf = req->buf;
 struct usb_composite_dev *cdev = ss->function.config->cdev;
 int max_packet_size = le16_to_cpu(ss->out_ep->desc->wMaxPacketSize);

 if (ss->pattern == 2)
  return 0;

 for (i = 0; i < req->actual; i++, buf++) {
  switch (ss->pattern) {


  case 0:
   if (*buf == 0)
    continue;
   break;
  case 1:
   if (*buf == (u8)((i % max_packet_size) % 63))
    continue;
   break;
  }
  ERROR(cdev, "bad OUT byte, buf[%d] = %d\n", i, *buf);
  usb_ep_set_halt(ss->out_ep);
  return -EINVAL;
 }
 return 0;
}
