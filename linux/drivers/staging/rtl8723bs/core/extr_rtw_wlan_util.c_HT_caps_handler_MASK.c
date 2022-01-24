#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ndis_80211_var_ie {unsigned int Length; int* data; } ;
struct ht_priv {int ht_option; int stbc_cap; int ldpc_cap; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct TYPE_5__ {int AMPDU_para; int /*<<< orphan*/ * MCS_rate; } ;
struct TYPE_6__ {int* HT_cap; TYPE_1__ HT_cap_element; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct mlme_ext_info {int HT_caps_enable; TYPE_3__ HT_caps; } ;
struct mlme_ext_priv {int /*<<< orphan*/  cur_bwmode; int /*<<< orphan*/ * default_supported_mcs_set; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_8__ {int wifi_spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_WIDTH_40 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  HW_VAR_RF_TYPE ; 
 int LDPC_HT_CAP_TX ; 
 int LDPC_HT_ENABLE_TX ; 
 int /*<<< orphan*/  MCS_RATE_1R ; 
 int /*<<< orphan*/  MCS_RATE_2R ; 
 int /*<<< orphan*/  MCS_RATE_2R_13TO15_OFF ; 
#define  RF_1T1R 130 
#define  RF_1T2R 129 
#define  RF_2T2R 128 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int STBC_HT_CAP_TX ; 
 int STBC_HT_ENABLE_TX ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 scalar_t__ FUNC6 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 TYPE_4__* pregistrypriv ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(struct adapter *padapter, struct ndis_80211_var_ie *pIE)
{
	unsigned int	i;
	u8 rf_type;
	u8 max_AMPDU_len, min_MPDU_spacing;
	u8 cur_ldpc_cap = 0, cur_stbc_cap = 0;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
	struct ht_priv 		*phtpriv = &pmlmepriv->htpriv;

	if (!pIE)
		return;

	if (phtpriv->ht_option == false)
		return;

	pmlmeinfo->HT_caps_enable = 1;

	for (i = 0; i < (pIE->Length); i++) {
		if (i != 2) {
			/* 	Commented by Albert 2010/07/12 */
			/* 	Got the endian issue here. */
			pmlmeinfo->HT_caps.u.HT_cap[i] &= (pIE->data[i]);
		} else {
			/* modify from  fw by Thomas 2010/11/17 */
			if ((pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3) > (pIE->data[i] & 0x3))
				max_AMPDU_len = (pIE->data[i] & 0x3);
			else
				max_AMPDU_len = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3);

			if ((pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c) > (pIE->data[i] & 0x1c))
				min_MPDU_spacing = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c);
			else
				min_MPDU_spacing = (pIE->data[i] & 0x1c);

			pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para = max_AMPDU_len | min_MPDU_spacing;
		}
	}
	FUNC7(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));

	/* update the MCS set */
	for (i = 0; i < 16; i++)
		pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate[i] &= pmlmeext->default_supported_mcs_set[i];

	/* update the MCS rates */
	switch (rf_type) {
	case RF_1T1R:
	case RF_1T2R:
		FUNC8(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_1R);
		break;
	case RF_2T2R:
	default:
#ifdef CONFIG_DISABLE_MCS13TO15
		if (pmlmeext->cur_bwmode == CHANNEL_WIDTH_40 && pregistrypriv->wifi_spec != 1)
			set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R_13TO15_OFF);
		else
			set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);
#else /* CONFIG_DISABLE_MCS13TO15 */
		FUNC8(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);
#endif /* CONFIG_DISABLE_MCS13TO15 */
	}

	if (FUNC6(pmlmepriv, WIFI_AP_STATE)) {
		/*  Config STBC setting */
		if (FUNC5(phtpriv->stbc_cap, STBC_HT_ENABLE_TX) && FUNC3(pIE->data)) {
			FUNC4(cur_stbc_cap, STBC_HT_ENABLE_TX);
			FUNC0("Enable HT Tx STBC !\n");
		}
		phtpriv->stbc_cap = cur_stbc_cap;
	} else {
		/*  Config LDPC Coding Capability */
		if (FUNC5(phtpriv->ldpc_cap, LDPC_HT_ENABLE_TX) && FUNC1(pIE->data)) {
			FUNC4(cur_ldpc_cap, (LDPC_HT_ENABLE_TX | LDPC_HT_CAP_TX));
			FUNC0("Enable HT Tx LDPC!\n");
		}
		phtpriv->ldpc_cap = cur_ldpc_cap;

		/*  Config STBC setting */
		if (FUNC5(phtpriv->stbc_cap, STBC_HT_ENABLE_TX) && FUNC2(pIE->data)) {
			FUNC4(cur_stbc_cap, (STBC_HT_ENABLE_TX | STBC_HT_CAP_TX));
			FUNC0("Enable HT Tx STBC!\n");
		}
		phtpriv->stbc_cap = cur_stbc_cap;
	}
}