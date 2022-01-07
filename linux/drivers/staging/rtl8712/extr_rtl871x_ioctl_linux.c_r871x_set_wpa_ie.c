
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned short u16 ;
struct TYPE_2__ {int AuthAlgrthm; int wps_phase; int wps_ie_len; int wps_ie; void* ndisencryptstatus; void* PrivacyAlgrthm; void* XGrpPrivacy; int ndisauthtype; } ;
struct _adapter {int pnetdev; TYPE_1__ securitypriv; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned short MAX_WPA_IE_LEN ;
 int Ndis802_11AuthModeWPA2PSK ;
 int Ndis802_11AuthModeWPAPSK ;
 void* Ndis802_11Encryption1Enabled ;
 void* Ndis802_11Encryption2Enabled ;
 void* Ndis802_11Encryption3Enabled ;
 void* Ndis802_11EncryptionDisabled ;
 unsigned short RSN_HEADER_LEN ;





 void* _AES_ ;
 void* _NO_PRIVACY_ ;
 void* _TKIP_ ;
 int _VENDOR_SPECIFIC_IE_ ;
 void* _WEP104_ ;
 void* _WEP40_ ;
 int kfree (int*) ;
 int* kmemdup (char*,unsigned short,int ) ;
 int memcmp (int*,int*,int) ;
 int memcpy (int ,int*,int) ;
 int netdev_info (int ,char*) ;
 scalar_t__ r8712_parse_wpa2_ie (int*,unsigned short,int*,int*) ;
 scalar_t__ r8712_parse_wpa_ie (int*,unsigned short,int*,int*) ;

__attribute__((used)) static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
       unsigned short ielen)
{
 u8 *buf = ((void*)0);
 int group_cipher = 0, pairwise_cipher = 0;
 int ret = 0;

 if ((ielen > MAX_WPA_IE_LEN) || (pie == ((void*)0)))
  return -EINVAL;
 if (ielen) {
  buf = kmemdup(pie, ielen, GFP_ATOMIC);
  if (buf == ((void*)0))
   return -ENOMEM;
  if (ielen < RSN_HEADER_LEN) {
   ret = -EINVAL;
   goto exit;
  }
  if (r8712_parse_wpa_ie(buf, ielen, &group_cipher,
      &pairwise_cipher) == 0) {
   padapter->securitypriv.AuthAlgrthm = 2;
   padapter->securitypriv.ndisauthtype =
      Ndis802_11AuthModeWPAPSK;
  }
  if (r8712_parse_wpa2_ie(buf, ielen, &group_cipher,
      &pairwise_cipher) == 0) {
   padapter->securitypriv.AuthAlgrthm = 2;
   padapter->securitypriv.ndisauthtype =
      Ndis802_11AuthModeWPA2PSK;
  }
  switch (group_cipher) {
  case 131:
   padapter->securitypriv.XGrpPrivacy =
     _NO_PRIVACY_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11EncryptionDisabled;
   break;
  case 128:
   padapter->securitypriv.XGrpPrivacy = _WEP40_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption1Enabled;
   break;
  case 130:
   padapter->securitypriv.XGrpPrivacy = _TKIP_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption2Enabled;
   break;
  case 132:
   padapter->securitypriv.XGrpPrivacy = _AES_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption3Enabled;
   break;
  case 129:
   padapter->securitypriv.XGrpPrivacy = _WEP104_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption1Enabled;
   break;
  }
  switch (pairwise_cipher) {
  case 131:
   padapter->securitypriv.PrivacyAlgrthm =
     _NO_PRIVACY_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11EncryptionDisabled;
   break;
  case 128:
   padapter->securitypriv.PrivacyAlgrthm = _WEP40_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption1Enabled;
   break;
  case 130:
   padapter->securitypriv.PrivacyAlgrthm = _TKIP_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption2Enabled;
   break;
  case 132:
   padapter->securitypriv.PrivacyAlgrthm = _AES_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption3Enabled;
   break;
  case 129:
   padapter->securitypriv.PrivacyAlgrthm = _WEP104_;
   padapter->securitypriv.ndisencryptstatus =
     Ndis802_11Encryption1Enabled;
   break;
  }
  padapter->securitypriv.wps_phase = 0;
  {
   u16 cnt = 0;
   u8 eid, wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};

   while (cnt < ielen) {
    eid = buf[cnt];

    if ((eid == _VENDOR_SPECIFIC_IE_) &&
        (!memcmp(&buf[cnt + 2], wps_oui, 4))) {
     netdev_info(padapter->pnetdev, "r8712u: SET WPS_IE\n");
     padapter->securitypriv.wps_ie_len =
         ((buf[cnt + 1] + 2) <
         (MAX_WPA_IE_LEN << 2)) ?
         (buf[cnt + 1] + 2) :
         (MAX_WPA_IE_LEN << 2);
     memcpy(padapter->securitypriv.wps_ie,
         &buf[cnt],
         padapter->securitypriv.wps_ie_len);
     padapter->securitypriv.wps_phase =
         1;
     netdev_info(padapter->pnetdev, "r8712u: SET WPS_IE, wps_phase==true\n");
     cnt += buf[cnt + 1] + 2;
     break;
    }

    cnt += buf[cnt + 1] + 2;
   }
  }
 }
exit:
 kfree(buf);
 return ret;
}
