
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_request {unsigned int length; int * buf; } ;
struct usb_ep {struct f_sourcesink* driver_data; TYPE_1__* desc; } ;
struct f_sourcesink {int pattern; } ;
struct TYPE_2__ {int wMaxPacketSize; } ;


 int le16_to_cpu (int ) ;
 int memset (int *,int ,unsigned int) ;

__attribute__((used)) static void reinit_write_data(struct usb_ep *ep, struct usb_request *req)
{
 unsigned i;
 u8 *buf = req->buf;
 int max_packet_size = le16_to_cpu(ep->desc->wMaxPacketSize);
 struct f_sourcesink *ss = ep->driver_data;

 switch (ss->pattern) {
 case 0:
  memset(req->buf, 0, req->length);
  break;
 case 1:
  for (i = 0; i < req->length; i++)
   *buf++ = (u8) ((i % max_packet_size) % 63);
  break;
 case 2:
  break;
 }
}
