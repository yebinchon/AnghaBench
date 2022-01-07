
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_buf {int * pxmit_urb; } ;
struct _adapter {int pnetdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmemleak_not_leak (int ) ;
 int netdev_err (int ,char*) ;
 int usb_alloc_urb (int ,int ) ;

int r8712_xmit_resource_alloc(struct _adapter *padapter,
         struct xmit_buf *pxmitbuf)
{
 int i;

 for (i = 0; i < 8; i++) {
  pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!pxmitbuf->pxmit_urb[i]) {
   netdev_err(padapter->pnetdev, "pxmitbuf->pxmit_urb[i] == NULL\n");
   return -ENOMEM;
  }
  kmemleak_not_leak(pxmitbuf->pxmit_urb[i]);
 }
 return 0;
}
