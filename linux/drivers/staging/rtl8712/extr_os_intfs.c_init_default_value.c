
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int frag_len; int rts_thresh; int vcs_type; int vcs; int vcs_setting; } ;
struct security_priv {int binstallGrpkey; int sw_decrypt; int sw_encrypt; } ;
struct registry_priv {int software_decrypt; int software_encrypt; int frag_thresh; int rts_thresh; int vcs_type; int vrtl_carrier_sense; } ;
struct ht_priv {int ampdu_enable; int* baddbareq_issued; } ;
struct mlme_priv {int passive_mode; struct ht_priv htpriv; } ;
struct _adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; struct xmit_priv xmitpriv; struct registry_priv registrypriv; } ;


 int _FAIL ;
 int r8712_init_registrypriv_dev_network (struct _adapter*) ;
 int r8712_update_registrypriv_dev_network (struct _adapter*) ;

__attribute__((used)) static void init_default_value(struct _adapter *padapter)
{
 struct registry_priv *pregistrypriv = &padapter->registrypriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;


 pxmitpriv->vcs_setting = pregistrypriv->vrtl_carrier_sense;
 pxmitpriv->vcs = pregistrypriv->vcs_type;
 pxmitpriv->vcs_type = pregistrypriv->vcs_type;
 pxmitpriv->rts_thresh = pregistrypriv->rts_thresh;
 pxmitpriv->frag_len = pregistrypriv->frag_thresh;


 pmlmepriv->passive_mode = 1;

 {
  int i;
  struct ht_priv *phtpriv = &pmlmepriv->htpriv;

  phtpriv->ampdu_enable = 0;
  for (i = 0; i < 16; i++)
   phtpriv->baddbareq_issued[i] = 0;
 }

 psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt;
 psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt;
 psecuritypriv->binstallGrpkey = _FAIL;


 r8712_init_registrypriv_dev_network(padapter);
 r8712_update_registrypriv_dev_network(padapter);

}
