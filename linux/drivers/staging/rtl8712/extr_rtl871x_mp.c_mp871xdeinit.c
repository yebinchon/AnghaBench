
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_priv {int dummy; } ;
struct _adapter {struct mp_priv mppriv; } ;


 int free_mp_priv (struct mp_priv*) ;

void mp871xdeinit(struct _adapter *padapter)
{
 struct mp_priv *pmppriv = &padapter->mppriv;

 free_mp_priv(pmppriv);
}
