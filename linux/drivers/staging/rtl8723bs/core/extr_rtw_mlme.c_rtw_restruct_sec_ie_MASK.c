#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint ;
typedef  scalar_t__ u8 ;
struct security_priv {scalar_t__ ndisauthtype; scalar_t__* wps_ie; int wps_ie_len; scalar_t__* supplicant_ie; } ;
struct mlme_priv {int /*<<< orphan*/  assoc_bssid; } ;
struct adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; } ;
typedef  scalar_t__ sint ;

/* Variables and functions */
 scalar_t__ Ndis802_11AuthModeWPA ; 
 scalar_t__ Ndis802_11AuthModeWPA2 ; 
 scalar_t__ Ndis802_11AuthModeWPA2PSK ; 
 scalar_t__ Ndis802_11AuthModeWPAPSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_UNDER_WPS ; 
 scalar_t__ _WPA2_IE_ID_ ; 
 scalar_t__ _WPA_IE_ID_ ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 scalar_t__ FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (struct adapter*,int,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,scalar_t__,int*) ; 

sint FUNC6(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_len)
{
	u8 authmode = 0x0;
	uint	ielength;
	int iEntry;

	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
	struct security_priv *psecuritypriv = &adapter->securitypriv;
	uint	ndisauthmode = psecuritypriv->ndisauthtype;

	FUNC0(_module_rtl871x_mlme_c_, _drv_notice_,
		 ("+rtw_restruct_sec_ie: ndisauthmode =%d\n", ndisauthmode));

	/* copy fixed ie only */
	FUNC3(out_ie, in_ie, 12);
	ielength = 12;
	if ((ndisauthmode == Ndis802_11AuthModeWPA) || (ndisauthmode == Ndis802_11AuthModeWPAPSK))
			authmode = _WPA_IE_ID_;
	if ((ndisauthmode == Ndis802_11AuthModeWPA2) || (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
			authmode = _WPA2_IE_ID_;

	if (FUNC2(pmlmepriv, WIFI_UNDER_WPS)) {
		FUNC3(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);

		ielength += psecuritypriv->wps_ie_len;
	} else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
		/* copy RSN or SSN */
		FUNC3(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
		/* debug for CONFIG_IEEE80211W
		{
			int jj;
			printk("supplicant_ie_length =%d &&&&&&&&&&&&&&&&&&&\n", psecuritypriv->supplicant_ie[1]+2);
			for (jj = 0; jj < psecuritypriv->supplicant_ie[1]+2; jj++)
				printk(" %02x ", psecuritypriv->supplicant_ie[jj]);
			printk("\n");
		}*/
		ielength += psecuritypriv->supplicant_ie[1]+2;
		FUNC5(adapter, authmode, psecuritypriv->supplicant_ie);
	}

	iEntry = FUNC1(adapter, pmlmepriv->assoc_bssid);
	if (iEntry < 0) {
		return ielength;
	} else {
		if (authmode == _WPA2_IE_ID_)
			ielength = FUNC4(adapter, iEntry, out_ie, ielength);
	}
	return ielength;
}