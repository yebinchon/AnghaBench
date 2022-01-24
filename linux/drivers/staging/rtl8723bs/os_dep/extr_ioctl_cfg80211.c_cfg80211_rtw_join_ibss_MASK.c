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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct security_priv {int /*<<< orphan*/  ndisauthtype; int /*<<< orphan*/  dot11AuthAlgrthm; void* dot118021XGrpPrivacy; void* dot11PrivacyAlgrthm; int /*<<< orphan*/  ndisencryptstatus; } ;
struct net_device {int dummy; } ;
struct ndis_802_11_ssid {int /*<<< orphan*/  Ssid; int /*<<< orphan*/  SsidLength; } ;
struct mlme_priv {int dummy; } ;
struct cfg80211_ibss_params {int /*<<< orphan*/  ssid_len; scalar_t__ ssid; } ;
struct adapter {struct mlme_priv mlmepriv; struct security_priv securitypriv; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  NL80211_AUTHTYPE_OPEN_SYSTEM ; 
 int /*<<< orphan*/  Ndis802_11AuthModeOpen ; 
 int /*<<< orphan*/  Ndis802_11EncryptionDisabled ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 scalar_t__ _FAIL ; 
 void* _NO_PRIVACY_ ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dot11AuthAlgrthm_Open ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_802_11_ssid*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct security_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct adapter*,struct ndis_802_11_ssid*) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy, struct net_device *ndev,
				  struct cfg80211_ibss_params *params)
{
	struct adapter *padapter = (struct adapter *)FUNC4(ndev);
	struct ndis_802_11_ssid ndis_ssid;
	struct security_priv *psecuritypriv = &padapter->securitypriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	int ret = 0;

	if (_FAIL == FUNC5(padapter)) {
		ret = -EPERM;
		goto exit;
	}

	if (FUNC0(pmlmepriv, WIFI_AP_STATE)) {
		ret = -EPERM;
		goto exit;
	}

	if (!params->ssid || !params->ssid_len)
	{
		ret = -EINVAL;
		goto exit;
	}

	if (params->ssid_len > IW_ESSID_MAX_SIZE) {

		ret = -E2BIG;
		goto exit;
	}

	FUNC2(&ndis_ssid, 0, sizeof(struct ndis_802_11_ssid));
	ndis_ssid.SsidLength = params->ssid_len;
	FUNC1(ndis_ssid.Ssid, (u8 *)params->ssid, params->ssid_len);

	/* DBG_8192C("ssid =%s, len =%zu\n", ndis_ssid.Ssid, params->ssid_len); */

	psecuritypriv->ndisencryptstatus = Ndis802_11EncryptionDisabled;
	psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
	psecuritypriv->dot118021XGrpPrivacy = _NO_PRIVACY_;
	psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open system */
	psecuritypriv->ndisauthtype = Ndis802_11AuthModeOpen;

	ret = FUNC3(psecuritypriv, NL80211_AUTHTYPE_OPEN_SYSTEM);
	FUNC6(padapter, psecuritypriv->ndisauthtype);

	if (FUNC7(padapter, &ndis_ssid) == false)
	{
		ret = -1;
		goto exit;
	}

exit:
	return ret;
}