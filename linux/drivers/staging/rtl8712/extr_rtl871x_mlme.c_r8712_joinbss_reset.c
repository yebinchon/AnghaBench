
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht_priv {int ampdu_enable; int* baddbareq_issued; scalar_t__ ht_option; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int r8712_write8 (struct _adapter*,int,int) ;

void r8712_joinbss_reset(struct _adapter *padapter)
{
 int i;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;




 phtpriv->ampdu_enable = 0;
 for (i = 0; i < 16; i++)
  phtpriv->baddbareq_issued[i] = 0;
 if (phtpriv->ht_option) {

  r8712_write8(padapter, 0x102500D9, 48);
 } else {


  r8712_write8(padapter, 0x102500D9, 1);
 }
}
