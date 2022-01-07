
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xmit_priv {struct hw_xmit* hwxmits; } ;
struct hw_xmit {int dummy; } ;
struct adapter {struct xmit_priv xmitpriv; } ;


 int kfree (int *) ;

void rtw_free_hwxmits(struct adapter *padapter)
{
 struct hw_xmit *hwxmits;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 hwxmits = pxmitpriv->hwxmits;
 if (hwxmits)
  kfree((u8 *)hwxmits);
}
