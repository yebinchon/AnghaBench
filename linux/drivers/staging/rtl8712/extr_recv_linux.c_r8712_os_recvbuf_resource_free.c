
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {scalar_t__ purb; scalar_t__ pskb; } ;
struct _adapter {int dummy; } ;


 int dev_kfree_skb_any (scalar_t__) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

void r8712_os_recvbuf_resource_free(struct _adapter *padapter,
        struct recv_buf *precvbuf)
{
 if (precvbuf->pskb)
  dev_kfree_skb_any(precvbuf->pskb);
 if (precvbuf->purb) {
  usb_kill_urb(precvbuf->purb);
  usb_free_urb(precvbuf->purb);
 }
}
