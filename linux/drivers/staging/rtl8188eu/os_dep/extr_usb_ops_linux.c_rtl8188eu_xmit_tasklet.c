
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int dummy; } ;
struct adapter {scalar_t__ bWritePortCancel; scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; int mlmepriv; struct xmit_priv xmitpriv; } ;


 int DBG_88E (char*) ;
 int _FW_UNDER_SURVEY ;
 scalar_t__ check_fwstate (int *,int ) ;
 int rtl8188eu_xmitframe_complete (struct adapter*,struct xmit_priv*) ;

void rtl8188eu_xmit_tasklet(void *priv)
{
 struct adapter *adapt = priv;
 struct xmit_priv *pxmitpriv = &adapt->xmitpriv;

 if (check_fwstate(&adapt->mlmepriv, _FW_UNDER_SURVEY))
  return;

 while (1) {
  if ((adapt->bDriverStopped) ||
      (adapt->bSurpriseRemoved) ||
      (adapt->bWritePortCancel)) {
   DBG_88E("xmit_tasklet => bDriverStopped or bSurpriseRemoved or bWritePortCancel\n");
   break;
  }

  if (!rtl8188eu_xmitframe_complete(adapt, pxmitpriv))
   break;
 }
}
