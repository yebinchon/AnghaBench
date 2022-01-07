
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned short u16 ;
struct TYPE_2__ {int* supplicant_ie; scalar_t__ dot11PrivacyAlgrthm; int wps_ie_len; int* wps_ie; int ndisauthtype; void* ndisencryptstatus; void* dot118021XGrpPrivacy; void* dot11AuthAlgrthm; } ;
struct adapter {TYPE_1__ securitypriv; int mlmepriv; } ;


 int DBG_871X (char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 int HW_VAR_OFF_RCR_AM ;
 unsigned short MAX_WPA_IE_LEN ;
 int MAX_WPS_IE_LEN ;
 int Ndis802_11AuthModeWPA2PSK ;
 int Ndis802_11AuthModeWPAPSK ;
 void* Ndis802_11Encryption1Enabled ;
 void* Ndis802_11Encryption2Enabled ;
 void* Ndis802_11Encryption3Enabled ;
 void* Ndis802_11EncryptionDisabled ;
 unsigned short RSN_HEADER_LEN ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_UNDER_WPS ;





 scalar_t__ _AES_ ;
 void* _NO_PRIVACY_ ;
 scalar_t__ _SUCCESS ;
 scalar_t__ _TKIP_ ;
 scalar_t__ _TKIP_WTMIC_ ;
 int _VENDOR_SPECIFIC_IE_ ;
 void* _WEP104_ ;
 void* _WEP40_ ;
 int _clr_fwstate_ (int *,int ) ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_rtl871x_ioctl_os_c ;
 void* dot11AuthAlgrthm_8021X ;
 int kfree (int*) ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,...) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;
 scalar_t__ rtw_parse_wpa2_ie (int*,unsigned short,int*,int*,int *) ;
 scalar_t__ rtw_parse_wpa_ie (int*,unsigned short,int*,int*,int *) ;
 int* rtw_zmalloc (unsigned short) ;
 int set_fwstate (int *,int ) ;

__attribute__((used)) static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ielen)
{
 u8 *buf = ((void*)0);
 int group_cipher = 0, pairwise_cipher = 0;
 int ret = 0;
 u8 null_addr[]= {0, 0, 0, 0, 0, 0};

 if ((ielen > MAX_WPA_IE_LEN) || (pie == ((void*)0))) {
  _clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
  if (pie == ((void*)0))
   return ret;
  else
   return -EINVAL;
 }

 if (ielen) {
  buf = rtw_zmalloc(ielen);
  if (buf == ((void*)0)) {
   ret = -ENOMEM;
   goto exit;
  }

  memcpy(buf, pie , ielen);


  {
   int i;
   DBG_871X("\n wpa_ie(length:%d):\n", ielen);
   for (i = 0;i<ielen;i =i+8)
    DBG_871X("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
  }

  if (ielen < RSN_HEADER_LEN) {
   RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("Ie len too short %d\n", ielen));
   ret = -1;
   goto exit;
  }

  if (rtw_parse_wpa_ie(buf, ielen, &group_cipher, &pairwise_cipher, ((void*)0)) == _SUCCESS) {
   padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
   padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPAPSK;
   memcpy(padapter->securitypriv.supplicant_ie, &buf[0], ielen);
  }

  if (rtw_parse_wpa2_ie(buf, ielen, &group_cipher, &pairwise_cipher, ((void*)0)) == _SUCCESS) {
   padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
   padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPA2PSK;
   memcpy(padapter->securitypriv.supplicant_ie, &buf[0], ielen);
  }

  if (group_cipher == 0)
   group_cipher = 131;
  if (pairwise_cipher == 0)
   pairwise_cipher = 131;

  switch (group_cipher) {
   case 131:
    padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
    padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
    break;
   case 128:
    padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
    break;
   case 130:
    padapter->securitypriv.dot118021XGrpPrivacy = _TKIP_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
    break;
   case 132:
    padapter->securitypriv.dot118021XGrpPrivacy = _AES_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
    break;
   case 129:
    padapter->securitypriv.dot118021XGrpPrivacy = _WEP104_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
    break;
  }

  switch (pairwise_cipher) {
   case 131:
    padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
    padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
    break;
   case 128:
    padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
    break;
   case 130:
    padapter->securitypriv.dot11PrivacyAlgrthm = _TKIP_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
    break;
   case 132:
    padapter->securitypriv.dot11PrivacyAlgrthm = _AES_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
    break;
   case 129:
    padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
    padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
    break;
  }

  _clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
  {
   u16 cnt = 0;
   u8 eid, wps_oui[4]={0x0, 0x50, 0xf2, 0x04};

   while (cnt < ielen) {
    eid = buf[cnt];

    if ((eid == _VENDOR_SPECIFIC_IE_) && (!memcmp(&buf[cnt+2], wps_oui, 4))) {
     DBG_871X("SET WPS_IE\n");

     padapter->securitypriv.wps_ie_len = ((buf[cnt+1]+2) < MAX_WPS_IE_LEN) ? (buf[cnt+1]+2):MAX_WPS_IE_LEN;

     memcpy(padapter->securitypriv.wps_ie, &buf[cnt], padapter->securitypriv.wps_ie_len);

     set_fwstate(&padapter->mlmepriv, WIFI_UNDER_WPS);

     cnt += buf[cnt+1]+2;

     break;
    } else {
     cnt += buf[cnt+1]+2;
    }
   }
  }
 }


        if (padapter->securitypriv.dot11PrivacyAlgrthm == _TKIP_
                || padapter->securitypriv.dot11PrivacyAlgrthm == _TKIP_WTMIC_
                || padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)


                rtw_hal_set_hwreg(padapter, HW_VAR_OFF_RCR_AM, null_addr);

 RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
   ("rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\n",
    pairwise_cipher, padapter->securitypriv.ndisencryptstatus, padapter->securitypriv.ndisauthtype));

exit:

 kfree(buf);

 return ret;
}
