
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct security_priv {int AuthAlgrthm; int XGrpKeyid; int wps_phase; int ndisencryptstatus; int ndisauthtype; void* XGrpPrivacy; scalar_t__ PrivacyKeyIndex; void* PrivacyAlgrthm; void* btkip_countermeasure; void* PMKIDIndex; int * PMKIDList; int tkip_timer; } ;
struct _adapter {struct security_priv securitypriv; int pnetdev; } ;
struct RT_PMKID_LIST {int dummy; } ;


 int NUM_PMKID_CACHE ;
 int Ndis802_11AuthModeOpen ;
 int Ndis802_11WEPDisabled ;
 void* _NO_PRIVACY_ ;
 int * backupPMKIDList ;
 int memcpy (int *,int *,int) ;
 int memset (unsigned char*,int ,int) ;
 int netif_carrier_off (int ) ;
 int r8712_indicate_wx_disassoc_event (struct _adapter*) ;
 int r8712_use_tkipkey_handler ;
 int timer_setup (int *,int ,int ) ;

void r8712_os_indicate_disconnect(struct _adapter *adapter)
{
 u8 backupPMKIDIndex = 0;
 u8 backupTKIPCountermeasure = 0x00;

 r8712_indicate_wx_disassoc_event(adapter);
 netif_carrier_off(adapter->pnetdev);
 if (adapter->securitypriv.AuthAlgrthm == 2) {






  memcpy(&backupPMKIDList[0],
         &adapter->securitypriv.PMKIDList[0],
         sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
  backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
  backupTKIPCountermeasure =
   adapter->securitypriv.btkip_countermeasure;
  memset((unsigned char *)&adapter->securitypriv, 0,
         sizeof(struct security_priv));
  timer_setup(&adapter->securitypriv.tkip_timer,
       r8712_use_tkipkey_handler, 0);



  memcpy(&adapter->securitypriv.PMKIDList[0],
         &backupPMKIDList[0],
         sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
  adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
  adapter->securitypriv.btkip_countermeasure =
      backupTKIPCountermeasure;
 } else {
  struct security_priv *sec_priv = &adapter->securitypriv;

  sec_priv->AuthAlgrthm = 0;
  sec_priv->PrivacyAlgrthm = _NO_PRIVACY_;
  sec_priv->PrivacyKeyIndex = 0;
  sec_priv->XGrpPrivacy = _NO_PRIVACY_;
  sec_priv->XGrpKeyid = 1;
  sec_priv->ndisauthtype = Ndis802_11AuthModeOpen;
  sec_priv->ndisencryptstatus = Ndis802_11WEPDisabled;
  sec_priv->wps_phase = 0;
 }
}
