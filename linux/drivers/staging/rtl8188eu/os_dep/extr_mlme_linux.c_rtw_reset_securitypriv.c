
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct security_priv {scalar_t__ dot11AuthAlgrthm; int dot118021XGrpKeyid; void* ndisencryptstatus; void* ndisauthtype; void* dot118021XGrpPrivacy; scalar_t__ dot11PrivacyKeyIndex; void* dot11PrivacyAlgrthm; int btkip_countermeasure_time; void* btkip_countermeasure; void* PMKIDIndex; int PMKIDList; } ;
struct rt_pmkid_list {int dummy; } ;
struct adapter {struct security_priv securitypriv; } ;


 int NUM_PMKID_CACHE ;
 void* Ndis802_11AuthModeOpen ;
 void* Ndis802_11WEPDisabled ;
 void* _NO_PRIVACY_ ;
 int backup_pmkid ;
 scalar_t__ dot11AuthAlgrthm_8021X ;
 scalar_t__ dot11AuthAlgrthm_Open ;
 int memcpy (int ,int ,int) ;
 int memset (struct security_priv*,int ,int) ;

void rtw_reset_securitypriv(struct adapter *adapter)
{
 u8 backup_index;
 u8 backup_counter;
 u32 backup_time;
 struct security_priv *psec_priv = &adapter->securitypriv;

 if (psec_priv->dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) {






  memcpy(backup_pmkid, psec_priv->PMKIDList,
         sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
  backup_index = psec_priv->PMKIDIndex;
  backup_counter = psec_priv->btkip_countermeasure;
  backup_time = psec_priv->btkip_countermeasure_time;

  memset(psec_priv, 0, sizeof(*psec_priv));




  memcpy(psec_priv->PMKIDList, backup_pmkid,
         sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
  psec_priv->PMKIDIndex = backup_index;
  psec_priv->btkip_countermeasure = backup_counter;
  psec_priv->btkip_countermeasure_time = backup_time;
  psec_priv->ndisauthtype = Ndis802_11AuthModeOpen;
  psec_priv->ndisencryptstatus = Ndis802_11WEPDisabled;
 } else {

  psec_priv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
  psec_priv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
  psec_priv->dot11PrivacyKeyIndex = 0;
  psec_priv->dot118021XGrpPrivacy = _NO_PRIVACY_;
  psec_priv->dot118021XGrpKeyid = 1;
  psec_priv->ndisauthtype = Ndis802_11AuthModeOpen;
  psec_priv->ndisencryptstatus = Ndis802_11WEPDisabled;
 }
}
