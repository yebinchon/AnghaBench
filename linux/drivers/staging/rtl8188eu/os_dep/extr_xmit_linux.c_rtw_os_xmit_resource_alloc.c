
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xmit_buf {int * pxmit_urb; scalar_t__ dma_transfer_addr; int pallocated_buf; int pbuf; } ;
struct adapter {int dummy; } ;


 int DBG_88E (char*) ;
 int GFP_KERNEL ;
 int PTR_ALIGN (int ,int ) ;
 int XMITBUF_ALIGN_SZ ;
 int _FAIL ;
 int _SUCCESS ;
 int kzalloc (int ,int ) ;
 int usb_alloc_urb (int ,int ) ;

int rtw_os_xmit_resource_alloc(struct adapter *padapter,
          struct xmit_buf *pxmitbuf, u32 alloc_sz)
{
 int i;

 pxmitbuf->pallocated_buf = kzalloc(alloc_sz, GFP_KERNEL);
 if (!pxmitbuf->pallocated_buf)
  return _FAIL;

 pxmitbuf->pbuf = PTR_ALIGN(pxmitbuf->pallocated_buf, XMITBUF_ALIGN_SZ);
 pxmitbuf->dma_transfer_addr = 0;

 for (i = 0; i < 8; i++) {
  pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!pxmitbuf->pxmit_urb[i]) {
   DBG_88E("pxmitbuf->pxmit_urb[i]==NULL");
   return _FAIL;
  }
 }
 return _SUCCESS;
}
