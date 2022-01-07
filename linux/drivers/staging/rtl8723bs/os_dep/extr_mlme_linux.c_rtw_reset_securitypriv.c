
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct security_priv {scalar_t__ dot11AuthAlgrthm; int dot118021XGrpKeyid; void* ndisencryptstatus; void* ndisauthtype; void* dot118021XGrpPrivacy; scalar_t__ dot11PrivacyKeyIndex; void* dot11PrivacyAlgrthm; int btkip_countermeasure_time; void* btkip_countermeasure; void* PMKIDIndex; int * PMKIDList; } ;
struct mlme_ext_priv {scalar_t__ mgnt_80211w_IPN_rx; } ;
struct adapter {int security_key_mutex; struct security_priv securitypriv; struct mlme_ext_priv mlmeextpriv; } ;
typedef int RT_PMKID_LIST ;


 int NUM_PMKID_CACHE ;
 void* Ndis802_11AuthModeOpen ;
 void* Ndis802_11WEPDisabled ;
 void* _NO_PRIVACY_ ;
 int * backupPMKIDList ;
 scalar_t__ dot11AuthAlgrthm_8021X ;
 scalar_t__ dot11AuthAlgrthm_Open ;
 int memcpy (int *,int *,int) ;
 int memset (unsigned char*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_reset_securitypriv(struct adapter *adapter)
{
 u8 backupPMKIDIndex = 0;
 u8 backupTKIPCountermeasure = 0x00;
 u32 backupTKIPcountermeasure_time = 0;

 struct mlme_ext_priv *pmlmeext = &adapter->mlmeextpriv;

 spin_lock_bh(&adapter->security_key_mutex);

 if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) {







  memcpy(&backupPMKIDList[ 0 ], &adapter->securitypriv.PMKIDList[ 0 ], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
  backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
  backupTKIPCountermeasure = adapter->securitypriv.btkip_countermeasure;
  backupTKIPcountermeasure_time = adapter->securitypriv.btkip_countermeasure_time;


  pmlmeext->mgnt_80211w_IPN_rx = 0;

  memset((unsigned char *)&adapter->securitypriv, 0, sizeof(struct security_priv));



  memcpy(&adapter->securitypriv.PMKIDList[ 0 ], &backupPMKIDList[ 0 ], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
  adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
  adapter->securitypriv.btkip_countermeasure = backupTKIPCountermeasure;
  adapter->securitypriv.btkip_countermeasure_time = backupTKIPcountermeasure_time;

  adapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
  adapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;

 } else {



  struct security_priv *psec_priv = &adapter->securitypriv;

  psec_priv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
  psec_priv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
  psec_priv->dot11PrivacyKeyIndex = 0;

  psec_priv->dot118021XGrpPrivacy = _NO_PRIVACY_;
  psec_priv->dot118021XGrpKeyid = 1;

  psec_priv->ndisauthtype = Ndis802_11AuthModeOpen;
  psec_priv->ndisencryptstatus = Ndis802_11WEPDisabled;

 }

 spin_unlock_bh(&adapter->security_key_mutex);
}
