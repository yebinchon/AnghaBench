
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct usb_device {int dummy; } ;
struct dvobj_priv {unsigned int* Queue2Pipe; int * RtInPipe; struct usb_device* pusbdev; } ;


 size_t HW_QUEUE_ENTRY ;
 size_t RECV_BULK_IN_ADDR ;
 size_t RECV_INT_IN_ADDR ;
 unsigned int usb_rcvbulkpipe (struct usb_device*,int ) ;
 unsigned int usb_sndbulkpipe (struct usb_device*,unsigned int) ;

unsigned int ffaddr2pipehdl(struct dvobj_priv *pdvobj, u32 addr)
{
 unsigned int pipe = 0, ep_num = 0;
 struct usb_device *pusbd = pdvobj->pusbdev;

 if (addr == RECV_BULK_IN_ADDR) {
  pipe = usb_rcvbulkpipe(pusbd, pdvobj->RtInPipe[0]);
 } else if (addr == RECV_INT_IN_ADDR) {
  pipe = usb_rcvbulkpipe(pusbd, pdvobj->RtInPipe[1]);
 } else if (addr < HW_QUEUE_ENTRY) {
  ep_num = pdvobj->Queue2Pipe[addr];
  pipe = usb_sndbulkpipe(pusbd, ep_num);
 }

 return pipe;
}
