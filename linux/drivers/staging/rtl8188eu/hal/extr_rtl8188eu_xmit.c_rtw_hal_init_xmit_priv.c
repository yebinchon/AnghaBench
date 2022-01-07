
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int xmit_tasklet; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef int s32 ;


 int _SUCCESS ;
 scalar_t__ rtl8188eu_xmit_tasklet ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

s32 rtw_hal_init_xmit_priv(struct adapter *adapt)
{
 struct xmit_priv *pxmitpriv = &adapt->xmitpriv;

 tasklet_init(&pxmitpriv->xmit_tasklet,
       (void(*)(unsigned long))rtl8188eu_xmit_tasklet,
       (unsigned long)adapt);
 return _SUCCESS;
}
