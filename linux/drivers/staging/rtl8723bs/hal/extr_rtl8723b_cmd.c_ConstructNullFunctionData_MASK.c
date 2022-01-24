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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {TYPE_1__ network; } ;
struct mlme_priv {struct wlan_network cur_network; } ;
struct mlme_ext_info {int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct ieee80211_qos_hdr {int /*<<< orphan*/  qos_ctrl; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; scalar_t__ frame_control; } ;
struct adapter {int /*<<< orphan*/  eeprompriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
#define  Ndis802_11APMode 130 
#define  Ndis802_11IBSS 129 
#define  Ndis802_11Infrastructure 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  WIFI_DATA_NULL ; 
 int /*<<< orphan*/  WIFI_QOS_DATA_NULL ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
	struct adapter *padapter,
	u8 *pframe,
	u32 *pLength,
	u8 *StaAddr,
	u8 bQoS,
	u8 AC,
	u8 bEosp,
	u8 bForcePowerSave
)
{
	struct ieee80211_hdr *pwlanhdr;
	__le16 *fctrl;
	u32 pktlen;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct wlan_network *cur_network = &pmlmepriv->cur_network;
	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);


	/* DBG_871X("%s:%d\n", __func__, bForcePowerSave); */

	pwlanhdr = (struct ieee80211_hdr *)pframe;

	fctrl = &pwlanhdr->frame_control;
	*(fctrl) = 0;
	if (bForcePowerSave)
		FUNC4(fctrl);

	switch (cur_network->network.InfrastructureMode) {
	case Ndis802_11Infrastructure:
		FUNC6(fctrl);
		FUNC8(pwlanhdr->addr1, FUNC7(&(pmlmeinfo->network)), ETH_ALEN);
		FUNC8(pwlanhdr->addr2, FUNC9(&(padapter->eeprompriv)), ETH_ALEN);
		FUNC8(pwlanhdr->addr3, StaAddr, ETH_ALEN);
		break;
	case Ndis802_11APMode:
		FUNC1(fctrl);
		FUNC8(pwlanhdr->addr1, StaAddr, ETH_ALEN);
		FUNC8(pwlanhdr->addr2, FUNC7(&(pmlmeinfo->network)), ETH_ALEN);
		FUNC8(pwlanhdr->addr3, FUNC9(&(padapter->eeprompriv)), ETH_ALEN);
		break;
	case Ndis802_11IBSS:
	default:
		FUNC8(pwlanhdr->addr1, StaAddr, ETH_ALEN);
		FUNC8(pwlanhdr->addr2, FUNC9(&(padapter->eeprompriv)), ETH_ALEN);
		FUNC8(pwlanhdr->addr3, FUNC7(&(pmlmeinfo->network)), ETH_ALEN);
		break;
	}

	FUNC5(pwlanhdr, 0);

	if (bQoS) {
		struct ieee80211_qos_hdr *pwlanqoshdr;

		FUNC2(pframe, WIFI_QOS_DATA_NULL);

		pwlanqoshdr = (struct ieee80211_qos_hdr *)pframe;
		FUNC3(&pwlanqoshdr->qos_ctrl, AC);
		FUNC0(&pwlanqoshdr->qos_ctrl, bEosp);

		pktlen = sizeof(struct ieee80211_qos_hdr);
	} else {
		FUNC2(pframe, WIFI_DATA_NULL);

		pktlen = sizeof(struct ieee80211_hdr_3addr);
	}

	*pLength = pktlen;
}