
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xmit_buf {scalar_t__* pxmit_urb; } ;
struct TYPE_2__ {scalar_t__ pxmitbuf; } ;
struct _adapter {TYPE_1__ xmitpriv; } ;


 int NR_XMITBUFF ;
 int usb_kill_urb (scalar_t__) ;

void r8712_usb_write_port_cancel(struct _adapter *padapter)
{
 int i, j;
 struct xmit_buf *pxmitbuf = (struct xmit_buf *)
         padapter->xmitpriv.pxmitbuf;

 for (i = 0; i < NR_XMITBUFF; i++) {
  for (j = 0; j < 8; j++) {
   if (pxmitbuf->pxmit_urb[j])
    usb_kill_urb(pxmitbuf->pxmit_urb[j]);
  }
  pxmitbuf++;
 }
}
