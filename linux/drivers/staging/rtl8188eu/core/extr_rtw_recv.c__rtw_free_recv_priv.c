
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_priv {int pallocated_frame_buf; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int rtw_free_uc_swdec_pending_queue (struct adapter*) ;
 int rtw_hal_free_recv_priv (struct adapter*) ;
 int vfree (int ) ;

void _rtw_free_recv_priv(struct recv_priv *precvpriv)
{
 struct adapter *padapter = precvpriv->adapter;

 rtw_free_uc_swdec_pending_queue(padapter);

 vfree(precvpriv->pallocated_frame_buf);

 rtw_hal_free_recv_priv(padapter);
}
