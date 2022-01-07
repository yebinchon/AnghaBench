
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_priv {scalar_t__ pallocated_frame_buf; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int rtw_free_uc_swdec_pending_queue (struct adapter*) ;
 int rtw_hal_free_recv_priv (struct adapter*) ;
 int rtw_os_recv_resource_free (struct recv_priv*) ;
 int vfree (scalar_t__) ;

void _rtw_free_recv_priv(struct recv_priv *precvpriv)
{
 struct adapter *padapter = precvpriv->adapter;

 rtw_free_uc_swdec_pending_queue(padapter);

 rtw_os_recv_resource_free(precvpriv);

 if (precvpriv->pallocated_frame_buf)
  vfree(precvpriv->pallocated_frame_buf);

 rtw_hal_free_recv_priv(padapter);
}
