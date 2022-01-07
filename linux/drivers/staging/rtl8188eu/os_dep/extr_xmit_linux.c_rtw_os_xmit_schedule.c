
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int lock; int xmit_tasklet; } ;
struct adapter {struct xmit_priv xmitpriv; } ;


 scalar_t__ rtw_txframes_pending (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_hi_schedule (int *) ;

void rtw_os_xmit_schedule(struct adapter *padapter)
{
 struct xmit_priv *pxmitpriv;

 if (!padapter)
  return;

 pxmitpriv = &padapter->xmitpriv;

 spin_lock_bh(&pxmitpriv->lock);

 if (rtw_txframes_pending(padapter))
  tasklet_hi_schedule(&pxmitpriv->xmit_tasklet);

 spin_unlock_bh(&pxmitpriv->lock);
}
