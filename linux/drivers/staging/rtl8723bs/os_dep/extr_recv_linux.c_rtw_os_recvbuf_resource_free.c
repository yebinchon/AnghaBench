
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {scalar_t__ pskb; } ;
struct adapter {int dummy; } ;


 int dev_kfree_skb_any (scalar_t__) ;

void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
{
 if (precvbuf->pskb) {
  dev_kfree_skb_any(precvbuf->pskb);
 }
}
