
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct recv_priv {int * pallocated_recv_buf; int * precv_buf; scalar_t__ free_recv_buf_queue_cnt; int recv_tasklet; } ;
struct recv_buf {int list; } ;
struct adapter {struct recv_priv recvpriv; } ;


 scalar_t__ NR_RECVBUFF ;
 int kfree (int *) ;
 int list_del_init (int *) ;
 int rtw_os_recvbuf_resource_free (struct adapter*,struct recv_buf*) ;
 int tasklet_kill (int *) ;

void rtl8723bs_free_recv_priv(struct adapter *padapter)
{
 u32 i;
 struct recv_priv *precvpriv;
 struct recv_buf *precvbuf;

 precvpriv = &padapter->recvpriv;


 tasklet_kill(&precvpriv->recv_tasklet);


 precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 if (precvbuf) {
  precvpriv->free_recv_buf_queue_cnt = 0;
  for (i = 0; i < NR_RECVBUFF; i++) {
   list_del_init(&precvbuf->list);
   rtw_os_recvbuf_resource_free(padapter, precvbuf);
   precvbuf++;
  }
  precvpriv->precv_buf = ((void*)0);
 }

 if (precvpriv->pallocated_recv_buf) {
  kfree(precvpriv->pallocated_recv_buf);
  precvpriv->pallocated_recv_buf = ((void*)0);
 }
}
