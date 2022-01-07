
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsh_hpriv {int dummy; } ;
struct usbhs_pkt {scalar_t__ zero; } ;
struct urb {int actual_length; int pipe; int dev; TYPE_1__* ep; } ;
struct TYPE_2__ {int desc; } ;


 int usb_dotoggle (int ,int ,int ) ;
 int usb_endpoint_maxp (int *) ;
 scalar_t__ usb_pipecontrol (int ) ;
 int usb_pipeendpoint (int ) ;
 int usb_pipeout (int ) ;

__attribute__((used)) static void usbhsh_endpoint_sequence_save(struct usbhsh_hpriv *hpriv,
       struct urb *urb,
       struct usbhs_pkt *pkt)
{
 int len = urb->actual_length;
 int maxp = usb_endpoint_maxp(&urb->ep->desc);
 int t = 0;


 if (usb_pipecontrol(urb->pipe))
  return;
 t = len / maxp;
 if (len % maxp)
  t++;
 if (pkt->zero)
  t++;
 t %= 2;

 if (t)
  usb_dotoggle(urb->dev,
        usb_pipeendpoint(urb->pipe),
        usb_pipeout(urb->pipe));
}
