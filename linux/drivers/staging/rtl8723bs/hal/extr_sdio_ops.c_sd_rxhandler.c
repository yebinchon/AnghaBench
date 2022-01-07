
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int dummy; } ;
struct recv_priv {int recv_tasklet; struct __queue recv_buf_pending_queue; } ;
struct recv_buf {int dummy; } ;
struct adapter {struct recv_priv recvpriv; } ;


 int rtw_enqueue_recvbuf (struct recv_buf*,struct __queue*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sd_rxhandler(struct adapter *adapter, struct recv_buf *recvbuf)
{
 struct recv_priv *recv_priv;
 struct __queue *pending_queue;

 recv_priv = &adapter->recvpriv;
 pending_queue = &recv_priv->recv_buf_pending_queue;


 rtw_enqueue_recvbuf(recvbuf, pending_queue);


 tasklet_schedule(&recv_priv->recv_tasklet);
}
