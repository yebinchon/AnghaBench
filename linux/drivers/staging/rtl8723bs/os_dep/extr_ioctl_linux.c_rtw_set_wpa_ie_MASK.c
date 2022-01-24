#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  unsigned short u16 ;
struct TYPE_2__ {int* supplicant_ie; scalar_t__ dot11PrivacyAlgrthm; int wps_ie_len; int* wps_ie; int /*<<< orphan*/  ndisauthtype; void* ndisencryptstatus; void* dot118021XGrpPrivacy; void* dot11AuthAlgrthm; } ;
struct adapter {TYPE_1__ securitypriv; int /*<<< orphan*/  mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HW_VAR_OFF_RCR_AM ; 
 unsigned short MAX_WPA_IE_LEN ; 
 int MAX_WPS_IE_LEN ; 
 int /*<<< orphan*/  Ndis802_11AuthModeWPA2PSK ; 
 int /*<<< orphan*/  Ndis802_11AuthModeWPAPSK ; 
 void* Ndis802_11Encryption1Enabled ; 
 void* Ndis802_11Encryption2Enabled ; 
 void* Ndis802_11Encryption3Enabled ; 
 void* Ndis802_11EncryptionDisabled ; 
 unsigned short RSN_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_UNDER_WPS ; 
#define  WPA_CIPHER_CCMP 132 
#define  WPA_CIPHER_NONE 131 
#define  WPA_CIPHER_TKIP 130 
#define  WPA_CIPHER_WEP104 129 
#define  WPA_CIPHER_WEP40 128 
 scalar_t__ _AES_ ; 
 void* _NO_PRIVACY_ ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ _TKIP_ ; 
 scalar_t__ _TKIP_WTMIC_ ; 
 int _VENDOR_SPECIFIC_IE_ ; 
 void* _WEP104_ ; 
 void* _WEP40_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_ioctl_os_c ; 
 void* dot11AuthAlgrthm_8021X ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int*,unsigned short,int*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int*,unsigned short,int*,int*,int /*<<< orphan*/ *) ; 
 int* FUNC9 (unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct adapter *padapter, char *pie, unsigned short ielen)
{
	u8 *buf = NULL;
	int group_cipher = 0, pairwise_cipher = 0;
	int ret = 0;
	u8 null_addr[]= {0, 0, 0, 0, 0, 0};

	if ((ielen > MAX_WPA_IE_LEN) || (pie == NULL)) {
		FUNC2(&padapter->mlmepriv, WIFI_UNDER_WPS);
		if (pie == NULL)
			return ret;
		else
			return -EINVAL;
	}

	if (ielen) {
		buf = FUNC9(ielen);
		if (buf == NULL) {
			ret =  -ENOMEM;
			goto exit;
		}

		FUNC5(buf, pie , ielen);

		/* dump */
		{
			int i;
			FUNC0("\n wpa_ie(length:%d):\n", ielen);
			for (i = 0;i<ielen;i =i+8)
				FUNC0("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
		}

		if (ielen < RSN_HEADER_LEN) {
			FUNC1(_module_rtl871x_ioctl_os_c, _drv_err_, ("Ie len too short %d\n", ielen));
			ret  = -1;
			goto exit;
		}

		if (FUNC8(buf, ielen, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPAPSK;
			FUNC5(padapter->securitypriv.supplicant_ie, &buf[0], ielen);
		}

		if (FUNC7(buf, ielen, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
			padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
			padapter->securitypriv.ndisauthtype =Ndis802_11AuthModeWPA2PSK;
			FUNC5(padapter->securitypriv.supplicant_ie, &buf[0], ielen);
		}

		if (group_cipher == 0)
			group_cipher = WPA_CIPHER_NONE;
		if (pairwise_cipher == 0)
			pairwise_cipher = WPA_CIPHER_NONE;

		switch (group_cipher) {
			case WPA_CIPHER_NONE:
				padapter->securitypriv.dot118021XGrpPrivacy = _NO_PRIVACY_;
				padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
				break;
			case WPA_CIPHER_WEP40:
				padapter->securitypriv.dot118021XGrpPrivacy = _WEP40_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
				break;
			case WPA_CIPHER_TKIP:
				padapter->securitypriv.dot118021XGrpPrivacy = _TKIP_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
				break;
			case WPA_CIPHER_CCMP:
				padapter->securitypriv.dot118021XGrpPrivacy = _AES_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
				break;
			case WPA_CIPHER_WEP104:
				padapter->securitypriv.dot118021XGrpPrivacy = _WEP104_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
				break;
		}

		switch (pairwise_cipher) {
			case WPA_CIPHER_NONE:
				padapter->securitypriv.dot11PrivacyAlgrthm = _NO_PRIVACY_;
				padapter->securitypriv.ndisencryptstatus =Ndis802_11EncryptionDisabled;
				break;
			case WPA_CIPHER_WEP40:
				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP40_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
				break;
			case WPA_CIPHER_TKIP:
				padapter->securitypriv.dot11PrivacyAlgrthm = _TKIP_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
				break;
			case WPA_CIPHER_CCMP:
				padapter->securitypriv.dot11PrivacyAlgrthm = _AES_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption3Enabled;
				break;
			case WPA_CIPHER_WEP104:
				padapter->securitypriv.dot11PrivacyAlgrthm = _WEP104_;
				padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption1Enabled;
				break;
		}

		FUNC2(&padapter->mlmepriv, WIFI_UNDER_WPS);
		{/* set wps_ie */
			u16 cnt = 0;
			u8 eid, wps_oui[4]={0x0, 0x50, 0xf2, 0x04};

			while (cnt < ielen) {
				eid = buf[cnt];

				if ((eid == _VENDOR_SPECIFIC_IE_) && (!FUNC4(&buf[cnt+2], wps_oui, 4))) {
					FUNC0("SET WPS_IE\n");

					padapter->securitypriv.wps_ie_len = ((buf[cnt+1]+2) < MAX_WPS_IE_LEN) ? (buf[cnt+1]+2):MAX_WPS_IE_LEN;

					FUNC5(padapter->securitypriv.wps_ie, &buf[cnt], padapter->securitypriv.wps_ie_len);

					FUNC10(&padapter->mlmepriv, WIFI_UNDER_WPS);

					cnt += buf[cnt+1]+2;

					break;
				} else {
					cnt += buf[cnt+1]+2; /* goto next */
				}
			}
		}
	}

	/* TKIP and AES disallow multicast packets until installing group key */
        if (padapter->securitypriv.dot11PrivacyAlgrthm == _TKIP_
                || padapter->securitypriv.dot11PrivacyAlgrthm == _TKIP_WTMIC_
                || padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)
                /* WPS open need to enable multicast */
                /*  check_fwstate(&padapter->mlmepriv, WIFI_UNDER_WPS) == true) */
                FUNC6(padapter, HW_VAR_OFF_RCR_AM, null_addr);

	FUNC1(_module_rtl871x_ioctl_os_c, _drv_info_,
		 ("rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\n",
		  pairwise_cipher, padapter->securitypriv.ndisencryptstatus, padapter->securitypriv.ndisauthtype));

exit:

	FUNC3(buf);

	return ret;
}