
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_buf {scalar_t__* pxmit_urb; } ;
struct _adapter {int dummy; } ;


 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

void r8712_xmit_resource_free(struct _adapter *padapter,
         struct xmit_buf *pxmitbuf)
{
 int i;

 for (i = 0; i < 8; i++) {
  if (pxmitbuf->pxmit_urb[i]) {
   usb_kill_urb(pxmitbuf->pxmit_urb[i]);
   usb_free_urb(pxmitbuf->pxmit_urb[i]);
  }
 }
}
