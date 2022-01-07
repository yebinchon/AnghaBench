
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device {int dummy; } ;
struct dvobj_priv {int nr_endpoint; struct usb_device* pusbdev; } ;
 unsigned int usb_rcvbulkpipe (struct usb_device*,int) ;
 unsigned int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static unsigned int ffaddr2pipehdl(struct dvobj_priv *pdvobj, u32 addr)
{
 unsigned int pipe = 0;
 struct usb_device *pusbd = pdvobj->pusbdev;

 if (pdvobj->nr_endpoint == 11) {
  switch (addr) {
  case 135:
   pipe = usb_sndbulkpipe(pusbd, 0x07);
   break;
  case 136:
   pipe = usb_sndbulkpipe(pusbd, 0x06);
   break;
  case 129:
   pipe = usb_sndbulkpipe(pusbd, 0x05);
   break;
  case 128:
   pipe = usb_sndbulkpipe(pusbd, 0x04);
   break;
  case 137:
   pipe = usb_sndbulkpipe(pusbd, 0x0a);
   break;
  case 134:
   pipe = usb_sndbulkpipe(pusbd, 0x0b);
   break;
  case 131:
   pipe = usb_sndbulkpipe(pusbd, 0x0c);
   break;
  case 130:
   pipe = usb_rcvbulkpipe(pusbd, 0x03);
   break;
  case 133:
   pipe = usb_rcvbulkpipe(pusbd, 0x09);
   break;
  case 132:
   pipe = usb_sndbulkpipe(pusbd, 0x0d);
   break;
  }
 } else if (pdvobj->nr_endpoint == 6) {
  switch (addr) {
  case 135:
   pipe = usb_sndbulkpipe(pusbd, 0x07);
   break;
  case 136:
   pipe = usb_sndbulkpipe(pusbd, 0x06);
   break;
  case 129:
   pipe = usb_sndbulkpipe(pusbd, 0x05);
   break;
  case 128:
   pipe = usb_sndbulkpipe(pusbd, 0x04);
   break;
  case 130:
  case 133:
   pipe = usb_rcvbulkpipe(pusbd, 0x03);
   break;
  case 132:
  case 137:
  case 134:
  case 131:
   pipe = usb_sndbulkpipe(pusbd, 0x0d);
   break;
  }
 } else if (pdvobj->nr_endpoint == 4) {
  switch (addr) {
  case 136:
   pipe = usb_sndbulkpipe(pusbd, 0x06);
   break;
  case 128:
   pipe = usb_sndbulkpipe(pusbd, 0x04);
   break;
  case 130:
  case 133:
   pipe = usb_rcvbulkpipe(pusbd, 0x03);
   break;
  case 132:
  case 137:
  case 134:
  case 131:
   pipe = usb_sndbulkpipe(pusbd, 0x0d);
   break;
  }
 } else {
  pipe = 0;
 }
 return pipe;
}
