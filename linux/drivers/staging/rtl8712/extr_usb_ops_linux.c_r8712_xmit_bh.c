
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int xmit_tasklet; } ;
struct _adapter {int pnetdev; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct xmit_priv xmitpriv; } ;


 int netdev_err (int ,char*) ;
 int r8712_xmitframe_complete (struct _adapter*,struct xmit_priv*,int *) ;
 int tasklet_hi_schedule (int *) ;

void r8712_xmit_bh(void *priv)
{
 int ret = 0;
 struct _adapter *padapter = priv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 if (padapter->driver_stopped ||
     padapter->surprise_removed) {
  netdev_err(padapter->pnetdev, "xmit_bh => driver_stopped or surprise_removed\n");
  return;
 }
 ret = r8712_xmitframe_complete(padapter, pxmitpriv, ((void*)0));
 if (!ret)
  return;
 tasklet_hi_schedule(&pxmitpriv->xmit_tasklet);
}
