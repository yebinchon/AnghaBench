
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct recv_priv {int signal_stat_sampling_interval; int signal_stat_timer; TYPE_1__ free_recv_queue; int pallocated_frame_buf; struct adapter* adapter; TYPE_1__ uc_swdec_pending_queue; TYPE_1__ recv_pending_queue; } ;
struct recv_frame {struct adapter* adapter; int * pkt; int list; } ;
struct adapter {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int NR_RECVFRAME ;
 struct recv_frame* PTR_ALIGN (int ,scalar_t__) ;
 scalar_t__ RXFRAME_ALIGN_SZ ;
 int _FAIL ;
 int _SUCCESS ;
 int _rtw_init_queue (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int rtw_hal_init_recv_priv (struct adapter*) ;
 int rtw_set_signal_stat_timer (struct recv_priv*) ;
 int rtw_signal_stat_timer_hdl ;
 int timer_setup (int *,int ,int ) ;
 int vzalloc (scalar_t__) ;

int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
{
 int i;

 struct recv_frame *precvframe;

 int res = _SUCCESS;

 _rtw_init_queue(&precvpriv->free_recv_queue);
 _rtw_init_queue(&precvpriv->recv_pending_queue);
 _rtw_init_queue(&precvpriv->uc_swdec_pending_queue);

 precvpriv->adapter = padapter;

 precvpriv->pallocated_frame_buf = vzalloc(NR_RECVFRAME * sizeof(struct recv_frame) + RXFRAME_ALIGN_SZ);

 if (!precvpriv->pallocated_frame_buf)
  return _FAIL;

 precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, RXFRAME_ALIGN_SZ);

 for (i = 0; i < NR_RECVFRAME; i++) {
  INIT_LIST_HEAD(&precvframe->list);

  list_add_tail(&precvframe->list,
         &precvpriv->free_recv_queue.queue);

  precvframe->pkt = ((void*)0);

  precvframe->adapter = padapter;
  precvframe++;
 }
 res = rtw_hal_init_recv_priv(padapter);

 timer_setup(&precvpriv->signal_stat_timer, rtw_signal_stat_timer_hdl,
      0);

 precvpriv->signal_stat_sampling_interval = 1000;

 rtw_set_signal_stat_timer(precvpriv);

 return res;
}
