
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_priv {struct _adapter* papdater; } ;
struct _adapter {struct mp_priv mppriv; } ;


 int init_mp_priv (struct mp_priv*) ;

void mp871xinit(struct _adapter *padapter)
{
 struct mp_priv *pmppriv = &padapter->mppriv;

 pmppriv->papdater = padapter;
 init_mp_priv(pmppriv);
}
