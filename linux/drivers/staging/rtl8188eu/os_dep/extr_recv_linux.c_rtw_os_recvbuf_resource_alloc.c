
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {int reuse; int purb; int * pskb; } ;
struct adapter {int dummy; } ;


 int GFP_KERNEL ;
 int _FAIL ;
 int _SUCCESS ;
 int usb_alloc_urb (int ,int ) ;

int rtw_os_recvbuf_resource_alloc(struct adapter *padapter,
      struct recv_buf *precvbuf)
{
 precvbuf->pskb = ((void*)0);
 precvbuf->reuse = 0;
 precvbuf->purb = usb_alloc_urb(0, GFP_KERNEL);
 if (!precvbuf->purb)
  return _FAIL;
 return _SUCCESS;
}
