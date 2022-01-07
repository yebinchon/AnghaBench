
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int hwxmits; } ;
struct _adapter {struct xmit_priv xmitpriv; } ;


 int kfree (int ) ;

__attribute__((used)) static void free_hwxmits(struct _adapter *padapter)
{
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 kfree(pxmitpriv->hwxmits);
}
