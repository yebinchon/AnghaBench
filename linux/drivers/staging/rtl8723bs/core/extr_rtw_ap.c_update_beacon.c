
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int update_bcn; int bcn_update_lock; } ;
struct mlme_ext_priv {int bstart_bss; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;
 int set_tx_beacon_cmd (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int update_BCNTIM (struct adapter*) ;
 int update_bcn_erpinfo_ie (struct adapter*) ;
 int update_bcn_fixed_ie (struct adapter*) ;
 int update_bcn_htcap_ie (struct adapter*) ;
 int update_bcn_htinfo_ie (struct adapter*) ;
 int update_bcn_rsn_ie (struct adapter*) ;
 int update_bcn_vendor_spec_ie (struct adapter*,int*) ;

void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
{
 struct mlme_priv *pmlmepriv;
 struct mlme_ext_priv *pmlmeext;




 if (!padapter)
  return;

 pmlmepriv = &(padapter->mlmepriv);
 pmlmeext = &(padapter->mlmeextpriv);


 if (!pmlmeext->bstart_bss)
  return;

 spin_lock_bh(&pmlmepriv->bcn_update_lock);

 switch (ie_id) {
 case 0xFF:

  update_bcn_fixed_ie(padapter);

  break;

 case 129:

  update_BCNTIM(padapter);

  break;

 case 133:

  update_bcn_erpinfo_ie(padapter);

  break;

 case 131:

  update_bcn_htcap_ie(padapter);

  break;

 case 130:

  update_bcn_rsn_ie(padapter);

  break;

 case 132:

  update_bcn_htinfo_ie(padapter);

  break;

 case 128:

  update_bcn_vendor_spec_ie(padapter, oui);

  break;

 default:
  break;
 }

 pmlmepriv->update_bcn = 1;

 spin_unlock_bh(&pmlmepriv->bcn_update_lock);


 if (tx) {

  set_tx_beacon_cmd(padapter);
 }

}
