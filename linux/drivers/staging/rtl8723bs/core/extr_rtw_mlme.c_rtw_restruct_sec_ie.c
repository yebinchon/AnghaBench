
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef scalar_t__ u8 ;
struct security_priv {scalar_t__ ndisauthtype; scalar_t__* wps_ie; int wps_ie_len; scalar_t__* supplicant_ie; } ;
struct mlme_priv {int assoc_bssid; } ;
struct adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; } ;
typedef scalar_t__ sint ;


 scalar_t__ Ndis802_11AuthModeWPA ;
 scalar_t__ Ndis802_11AuthModeWPA2 ;
 scalar_t__ Ndis802_11AuthModeWPA2PSK ;
 scalar_t__ Ndis802_11AuthModeWPAPSK ;
 int RT_TRACE (int ,int ,char*) ;
 int SecIsInPMKIDList (struct adapter*,int ) ;
 int WIFI_UNDER_WPS ;
 scalar_t__ _WPA2_IE_ID_ ;
 scalar_t__ _WPA_IE_ID_ ;
 int _drv_notice_ ;
 int _module_rtl871x_mlme_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ rtw_append_pmkid (struct adapter*,int,scalar_t__*,scalar_t__) ;
 int rtw_report_sec_ie (struct adapter*,scalar_t__,int*) ;

sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_len)
{
 u8 authmode = 0x0;
 uint ielength;
 int iEntry;

 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 struct security_priv *psecuritypriv = &adapter->securitypriv;
 uint ndisauthmode = psecuritypriv->ndisauthtype;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_,
   ("+rtw_restruct_sec_ie: ndisauthmode =%d\n", ndisauthmode));


 memcpy(out_ie, in_ie, 12);
 ielength = 12;
 if ((ndisauthmode == Ndis802_11AuthModeWPA) || (ndisauthmode == Ndis802_11AuthModeWPAPSK))
   authmode = _WPA_IE_ID_;
 if ((ndisauthmode == Ndis802_11AuthModeWPA2) || (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
   authmode = _WPA2_IE_ID_;

 if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
  memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);

  ielength += psecuritypriv->wps_ie_len;
 } else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {

  memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
  ielength += psecuritypriv->supplicant_ie[1]+2;
  rtw_report_sec_ie(adapter, authmode, psecuritypriv->supplicant_ie);
 }

 iEntry = SecIsInPMKIDList(adapter, pmlmepriv->assoc_bssid);
 if (iEntry < 0) {
  return ielength;
 } else {
  if (authmode == _WPA2_IE_ID_)
   ielength = rtw_append_pmkid(adapter, iEntry, out_ie, ielength);
 }
 return ielength;
}
