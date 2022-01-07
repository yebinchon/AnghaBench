
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct xmit_buf {int pallocated_buf; } ;
struct adapter {int dummy; } ;


 int kfree (int ) ;

void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitbuf, u32 free_sz, u8 flag)
{
 if (free_sz > 0)
  kfree(pxmitbuf->pallocated_buf);
}
