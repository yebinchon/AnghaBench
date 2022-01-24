#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_10__ {int /*<<< orphan*/  confirm_wait; int /*<<< orphan*/  snooze_guard; } ;
struct TYPE_9__ {int /*<<< orphan*/  operation_mode; int /*<<< orphan*/  fragment; int /*<<< orphan*/  rts; int /*<<< orphan*/  scan_type; } ;
struct TYPE_8__ {int ielen; int /*<<< orphan*/ * ie; int /*<<< orphan*/  wps_enabled; } ;
struct TYPE_6__ {int failure; int /*<<< orphan*/  stop; int /*<<< orphan*/  counter; } ;
struct TYPE_7__ {TYPE_1__ mic_failure; } ;
struct ks_wlan_private {int /*<<< orphan*/  region; int /*<<< orphan*/  confirm_wait; int /*<<< orphan*/  dev_state; TYPE_5__ psstatus; TYPE_4__ reg; int /*<<< orphan*/  eeprom_checksum; int /*<<< orphan*/  gain; TYPE_3__ wps; TYPE_2__ wpa; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  scan_ssid_len; int /*<<< orphan*/  scan_ssid; int /*<<< orphan*/ * eth_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_BOOT ; 
 int /*<<< orphan*/  DEVICE_STATE_INIT ; 
 int /*<<< orphan*/  DEVICE_STATE_PREINIT ; 
 int /*<<< orphan*/  DOT11_FRAGMENTATION_THRESHOLD ; 
 int /*<<< orphan*/  DOT11_MAC_ADDRESS ; 
 int /*<<< orphan*/  DOT11_PRODUCT_VERSION ; 
 int /*<<< orphan*/  DOT11_RTS_THRESHOLD ; 
 int /*<<< orphan*/  EEPROM_FW_NOT_SUPPORT ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  LOCAL_CURRENTADDRESS ; 
 int /*<<< orphan*/  LOCAL_EEPROM_SUM ; 
 int /*<<< orphan*/  LOCAL_GAIN ; 
 int /*<<< orphan*/  LOCAL_REGION ; 
 int /*<<< orphan*/  LOCAL_WPS_ENABLE ; 
 int /*<<< orphan*/  LOCAL_WPS_PROBE_REQ ; 
#define  SME_BSS_SCAN_CONFIRM 191 
#define  SME_BSS_SCAN_REQUEST 190 
#define  SME_FRAGMENTATION_THRESHOLD_CONFIRM 189 
#define  SME_FRAGMENTATION_THRESHOLD_REQUEST 188 
#define  SME_GET_EEPROM_CKSUM 187 
#define  SME_GET_GAIN 186 
#define  SME_GET_MAC_ADDRESS 185 
#define  SME_GET_PRODUCT_VERSION 184 
#define  SME_MACADDRESS_SET_REQUEST 183 
#define  SME_MIC_FAILURE_CONFIRM 182 
#define  SME_MIC_FAILURE_REQUEST 181 
#define  SME_MODE_SET_CONFIRM 180 
#define  SME_MODE_SET_REQUEST 179 
#define  SME_MULTICAST_CONFIRM 178 
#define  SME_MULTICAST_REQUEST 177 
#define  SME_PHY_INFO_CONFIRM 176 
#define  SME_PHY_INFO_REQUEST 175 
#define  SME_POW_MNGMT_CONFIRM 174 
#define  SME_POW_MNGMT_REQUEST 173 
#define  SME_RSN_AUTH_CONFIRM 172 
#define  SME_RSN_AUTH_REQUEST 171 
#define  SME_RSN_ENABLED_CONFIRM 170 
#define  SME_RSN_ENABLED_REQUEST 169 
#define  SME_RSN_MCAST_CONFIRM 168 
#define  SME_RSN_MCAST_REQUEST 167 
#define  SME_RSN_MODE_CONFIRM 166 
#define  SME_RSN_MODE_REQUEST 165 
#define  SME_RSN_UCAST_CONFIRM 164 
#define  SME_RSN_UCAST_REQUEST 163 
#define  SME_RTS_THRESHOLD_CONFIRM 162 
#define  SME_RTS_THRESHOLD_REQUEST 161 
#define  SME_SET_FLAG 160 
#define  SME_SET_GAIN 159 
#define  SME_SET_GMK1_TSC 158 
#define  SME_SET_GMK2_TSC 157 
#define  SME_SET_KEY1 156 
#define  SME_SET_KEY2 155 
#define  SME_SET_KEY3 154 
#define  SME_SET_KEY4 153 
#define  SME_SET_PMKSA 152 
#define  SME_SET_PMK_TSC 151 
#define  SME_SET_REGION 150 
#define  SME_SET_TXKEY 149 
#define  SME_SLEEP_REQUEST 148 
#define  SME_START 147 
#define  SME_START_CONFIRM 146 
#define  SME_START_REQUEST 145 
#define  SME_STOP_CONFIRM 144 
#define  SME_STOP_REQUEST 143 
#define  SME_TERMINATE 142 
#define  SME_WEP_FLAG_CONFIRM 141 
#define  SME_WEP_FLAG_REQUEST 140 
#define  SME_WEP_INDEX_CONFIRM 139 
#define  SME_WEP_INDEX_REQUEST 138 
#define  SME_WEP_KEY1_CONFIRM 137 
#define  SME_WEP_KEY1_REQUEST 136 
#define  SME_WEP_KEY2_CONFIRM 135 
#define  SME_WEP_KEY2_REQUEST 134 
#define  SME_WEP_KEY3_CONFIRM 133 
#define  SME_WEP_KEY3_REQUEST 132 
#define  SME_WEP_KEY4_CONFIRM 131 
#define  SME_WEP_KEY4_REQUEST 130 
#define  SME_WPS_ENABLE_REQUEST 129 
#define  SME_WPS_PROBE_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct ks_wlan_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct ks_wlan_private*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ks_wlan_private*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC19(struct ks_wlan_private *priv, int event)
{
	u16 failure;

	switch (event) {
	case SME_START:
		if (priv->dev_state == DEVICE_STATE_BOOT)
			FUNC3(priv, DOT11_MAC_ADDRESS);
		break;
	case SME_MULTICAST_REQUEST:
		FUNC9(priv);
		break;
	case SME_MACADDRESS_SET_REQUEST:
		FUNC5(priv, LOCAL_CURRENTADDRESS,
					       &priv->eth_addr[0], ETH_ALEN);
		break;
	case SME_BSS_SCAN_REQUEST:
		FUNC2(priv, priv->reg.scan_type,
					priv->scan_ssid, priv->scan_ssid_len);
		break;
	case SME_POW_MNGMT_REQUEST:
		FUNC10(priv);
		break;
	case SME_PHY_INFO_REQUEST:
		FUNC7(priv);
		break;
	case SME_MIC_FAILURE_REQUEST:
		failure = priv->wpa.mic_failure.failure;
		if (failure != 1 && failure != 2) {
			FUNC18(priv->net_dev,
				   "SME_MIC_FAILURE_REQUEST: failure count=%u error?\n",
				   failure);
			return;
		}
		FUNC6(priv, failure - 1, (failure == 1) ?
					    0 : priv->wpa.mic_failure.counter);
		break;
	case SME_MIC_FAILURE_CONFIRM:
		if (priv->wpa.mic_failure.failure == 2) {
			if (priv->wpa.mic_failure.stop)
				priv->wpa.mic_failure.stop = 0;
			priv->wpa.mic_failure.failure = 0;
			FUNC16(priv, priv->reg.operation_mode);
		}
		break;
	case SME_GET_MAC_ADDRESS:
		if (priv->dev_state == DEVICE_STATE_BOOT)
			FUNC3(priv, DOT11_PRODUCT_VERSION);
		break;
	case SME_GET_PRODUCT_VERSION:
		if (priv->dev_state == DEVICE_STATE_BOOT)
			priv->dev_state = DEVICE_STATE_PREINIT;
		break;
	case SME_STOP_REQUEST:
		FUNC17(priv);
		break;
	case SME_RTS_THRESHOLD_REQUEST:
		FUNC4(priv, DOT11_RTS_THRESHOLD,
					   priv->reg.rts);
		break;
	case SME_FRAGMENTATION_THRESHOLD_REQUEST:
		FUNC4(priv, DOT11_FRAGMENTATION_THRESHOLD,
					   priv->reg.fragment);
		break;
	case SME_WEP_INDEX_REQUEST:
	case SME_WEP_KEY1_REQUEST:
	case SME_WEP_KEY2_REQUEST:
	case SME_WEP_KEY3_REQUEST:
	case SME_WEP_KEY4_REQUEST:
	case SME_WEP_FLAG_REQUEST:
		FUNC14(priv, event);
		break;
	case SME_RSN_UCAST_REQUEST:
	case SME_RSN_MCAST_REQUEST:
	case SME_RSN_AUTH_REQUEST:
	case SME_RSN_ENABLED_REQUEST:
	case SME_RSN_MODE_REQUEST:
		FUNC13(priv, event);
		break;
	case SME_SET_FLAG:
	case SME_SET_TXKEY:
	case SME_SET_KEY1:
	case SME_SET_KEY2:
	case SME_SET_KEY3:
	case SME_SET_KEY4:
	case SME_SET_PMK_TSC:
	case SME_SET_GMK1_TSC:
	case SME_SET_GMK2_TSC:
		FUNC11(priv, event);
		break;
	case SME_SET_PMKSA:
		FUNC12(priv);
		break;
	case SME_WPS_ENABLE_REQUEST:
		FUNC4(priv, LOCAL_WPS_ENABLE,
					   priv->wps.wps_enabled);
		break;
	case SME_WPS_PROBE_REQUEST:
		FUNC5(priv, LOCAL_WPS_PROBE_REQ,
					       priv->wps.ie, priv->wps.ielen);
		break;
	case SME_MODE_SET_REQUEST:
		FUNC8(priv);
		break;
	case SME_SET_GAIN:
		FUNC5(priv, LOCAL_GAIN,
					       &priv->gain, sizeof(priv->gain));
		break;
	case SME_GET_GAIN:
		FUNC3(priv, LOCAL_GAIN);
		break;
	case SME_GET_EEPROM_CKSUM:
		priv->eeprom_checksum = EEPROM_FW_NOT_SUPPORT;	/* initialize */
		FUNC3(priv, LOCAL_EEPROM_SUM);
		break;
	case SME_START_REQUEST:
		FUNC16(priv, priv->reg.operation_mode);
		break;
	case SME_START_CONFIRM:
		/* for power save */
		FUNC0(&priv->psstatus.snooze_guard, 0);
		FUNC0(&priv->psstatus.confirm_wait, 0);
		if (priv->dev_state == DEVICE_STATE_PREINIT)
			priv->dev_state = DEVICE_STATE_INIT;
		/* wake_up_interruptible_all(&priv->confirm_wait); */
		FUNC1(&priv->confirm_wait);
		break;
	case SME_SLEEP_REQUEST:
		FUNC15(priv);
		break;
	case SME_SET_REGION:
		FUNC4(priv, LOCAL_REGION, priv->region);
		break;
	case SME_MULTICAST_CONFIRM:
	case SME_BSS_SCAN_CONFIRM:
	case SME_POW_MNGMT_CONFIRM:
	case SME_PHY_INFO_CONFIRM:
	case SME_STOP_CONFIRM:
	case SME_RTS_THRESHOLD_CONFIRM:
	case SME_FRAGMENTATION_THRESHOLD_CONFIRM:
	case SME_WEP_INDEX_CONFIRM:
	case SME_WEP_KEY1_CONFIRM:
	case SME_WEP_KEY2_CONFIRM:
	case SME_WEP_KEY3_CONFIRM:
	case SME_WEP_KEY4_CONFIRM:
	case SME_WEP_FLAG_CONFIRM:
	case SME_RSN_UCAST_CONFIRM:
	case SME_RSN_MCAST_CONFIRM:
	case SME_RSN_AUTH_CONFIRM:
	case SME_RSN_ENABLED_CONFIRM:
	case SME_RSN_MODE_CONFIRM:
	case SME_MODE_SET_CONFIRM:
	case SME_TERMINATE:
	default:
		break;
	}
}