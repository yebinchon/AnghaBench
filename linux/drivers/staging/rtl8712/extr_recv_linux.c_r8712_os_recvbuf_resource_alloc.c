
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {int irp_pending; scalar_t__ len; scalar_t__ transfer_len; int * pend; int * ptail; int * phead; int * pdata; int * pbuf; int * pallocated_buf; int * pskb; int purb; } ;
struct _adapter {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int usb_alloc_urb (int ,int ) ;

int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
        struct recv_buf *precvbuf)
{
 int res = 0;

 precvbuf->irp_pending = 0;
 precvbuf->purb = usb_alloc_urb(0, GFP_KERNEL);
 if (!precvbuf->purb)
  res = -ENOMEM;
 precvbuf->pskb = ((void*)0);
 precvbuf->pallocated_buf = ((void*)0);
 precvbuf->pbuf = ((void*)0);
 precvbuf->pdata = ((void*)0);
 precvbuf->phead = ((void*)0);
 precvbuf->ptail = ((void*)0);
 precvbuf->pend = ((void*)0);
 precvbuf->transfer_len = 0;
 precvbuf->len = 0;
 return res;
}
