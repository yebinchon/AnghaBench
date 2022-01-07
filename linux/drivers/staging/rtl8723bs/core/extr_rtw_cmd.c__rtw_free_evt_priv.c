
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evt_priv {void* c2h_queue; scalar_t__ c2h_wk_alive; int c2h_wk; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _cancel_workitem_sync (int *) ;
 int _drv_info_ ;
 int _module_rtl871x_cmd_c_ ;
 int kfree (void*) ;
 int msleep (int) ;
 int rtw_cbuf_empty (void*) ;
 void* rtw_cbuf_pop (void*) ;

void _rtw_free_evt_priv(struct evt_priv *pevtpriv)
{
 RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+_rtw_free_evt_priv\n"));

 _cancel_workitem_sync(&pevtpriv->c2h_wk);
 while (pevtpriv->c2h_wk_alive)
  msleep(10);

 while (!rtw_cbuf_empty(pevtpriv->c2h_queue)) {
  void *c2h = rtw_cbuf_pop(pevtpriv->c2h_queue);
  if (c2h != ((void*)0) && c2h != (void *)pevtpriv) {
   kfree(c2h);
  }
 }
 kfree(pevtpriv->c2h_queue);

 RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("-_rtw_free_evt_priv\n"));
}
