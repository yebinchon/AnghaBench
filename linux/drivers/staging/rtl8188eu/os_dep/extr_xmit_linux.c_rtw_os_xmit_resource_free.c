
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_buf {int pallocated_buf; int * pxmit_urb; } ;


 int kfree (int ) ;
 int usb_free_urb (int ) ;

void rtw_os_xmit_resource_free(struct xmit_buf *pxmitbuf)
{
 int i;

 for (i = 0; i < 8; i++)
  usb_free_urb(pxmitbuf->pxmit_urb[i]);

 kfree(pxmitbuf->pallocated_buf);
}
