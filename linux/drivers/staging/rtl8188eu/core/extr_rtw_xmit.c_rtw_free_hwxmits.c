
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {struct hw_xmit* hwxmits; } ;
struct hw_xmit {int dummy; } ;
struct adapter {struct xmit_priv xmitpriv; } ;


 int kfree (struct hw_xmit*) ;

void rtw_free_hwxmits(struct adapter *padapter)
{
 struct hw_xmit *hwxmits;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 hwxmits = pxmitpriv->hwxmits;
 kfree(hwxmits);
}
