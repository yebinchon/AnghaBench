
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int free_bss_buf; } ;


 int kfree (int ) ;

void r8712_free_mlme_priv(struct mlme_priv *pmlmepriv)
{
 kfree(pmlmepriv->free_bss_buf);
}
