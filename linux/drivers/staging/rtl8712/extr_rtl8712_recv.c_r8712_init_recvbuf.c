
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {scalar_t__ pdata; scalar_t__ pend; scalar_t__ pbuf; scalar_t__ ptail; scalar_t__ phead; scalar_t__ ref_cnt; scalar_t__ len; scalar_t__ transfer_len; } ;
struct _adapter {int dummy; } ;


 scalar_t__ MAX_RECVBUF_SZ ;

void r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf)
{
 precvbuf->transfer_len = 0;
 precvbuf->len = 0;
 precvbuf->ref_cnt = 0;
 if (precvbuf->pbuf) {
  precvbuf->pdata = precvbuf->pbuf;
  precvbuf->phead = precvbuf->pbuf;
  precvbuf->ptail = precvbuf->pbuf;
  precvbuf->pend = precvbuf->pdata + MAX_RECVBUF_SZ;
 }
}
