
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evt_priv {int c2h_wk_alive; int c2h_queue; int c2h_wk; scalar_t__ evt_done_cnt; int event_seq; } ;


 scalar_t__ C2H_QUEUE_MAX_LEN ;
 int ENOMEM ;
 int _init_workitem (int *,int ,int *) ;
 int atomic_set (int *,int ) ;
 int c2h_wk_callback ;
 int rtw_cbuf_alloc (scalar_t__) ;

int rtw_init_evt_priv(struct evt_priv *pevtpriv)
{

 atomic_set(&pevtpriv->event_seq, 0);
 pevtpriv->evt_done_cnt = 0;

 _init_workitem(&pevtpriv->c2h_wk, c2h_wk_callback, ((void*)0));
 pevtpriv->c2h_wk_alive = 0;
 pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
 if (!pevtpriv->c2h_queue)
  return -ENOMEM;

 return 0;
}
