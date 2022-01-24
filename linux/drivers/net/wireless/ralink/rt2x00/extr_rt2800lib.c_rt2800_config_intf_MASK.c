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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00intf_conf {int sync; void** bssid; void** mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCN_TIME_CFG ; 
 int /*<<< orphan*/  BCN_TIME_CFG_TSF_SYNC ; 
 unsigned int const CONFIG_UPDATE_BSSID ; 
 unsigned int const CONFIG_UPDATE_MAC ; 
 unsigned int const CONFIG_UPDATE_TYPE ; 
 int /*<<< orphan*/  MAC_ADDR_DW0 ; 
 int /*<<< orphan*/  MAC_ADDR_DW1_UNICAST_TO_ME_MASK ; 
 int /*<<< orphan*/  MAC_BSSID_DW0 ; 
 int /*<<< orphan*/  MAC_BSSID_DW1_BSS_BCN_NUM ; 
 int /*<<< orphan*/  MAC_BSSID_DW1_BSS_ID_MASK ; 
 int /*<<< orphan*/  TBTT_SYNC_CFG ; 
 int /*<<< orphan*/  TBTT_SYNC_CFG_BCN_AIFSN ; 
 int /*<<< orphan*/  TBTT_SYNC_CFG_BCN_CWMIN ; 
 int /*<<< orphan*/  TBTT_SYNC_CFG_BCN_EXP_WIN ; 
 int /*<<< orphan*/  TBTT_SYNC_CFG_TBTT_ADJUST ; 
 scalar_t__ TSF_SYNC_AP_NONE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct rt2x00_dev *rt2x00dev, struct rt2x00_intf *intf,
			struct rt2x00intf_conf *conf, const unsigned int flags)
{
	u32 reg;
	bool update_bssid = false;

	if (flags & CONFIG_UPDATE_TYPE) {
		/*
		 * Enable synchronisation.
		 */
		reg = FUNC5(rt2x00dev, BCN_TIME_CFG);
		FUNC7(&reg, BCN_TIME_CFG_TSF_SYNC, conf->sync);
		FUNC6(rt2x00dev, BCN_TIME_CFG, reg);

		if (conf->sync == TSF_SYNC_AP_NONE) {
			/*
			 * Tune beacon queue transmit parameters for AP mode
			 */
			reg = FUNC5(rt2x00dev, TBTT_SYNC_CFG);
			FUNC7(&reg, TBTT_SYNC_CFG_BCN_CWMIN, 0);
			FUNC7(&reg, TBTT_SYNC_CFG_BCN_AIFSN, 1);
			FUNC7(&reg, TBTT_SYNC_CFG_BCN_EXP_WIN, 32);
			FUNC7(&reg, TBTT_SYNC_CFG_TBTT_ADJUST, 0);
			FUNC6(rt2x00dev, TBTT_SYNC_CFG, reg);
		} else {
			reg = FUNC5(rt2x00dev, TBTT_SYNC_CFG);
			FUNC7(&reg, TBTT_SYNC_CFG_BCN_CWMIN, 4);
			FUNC7(&reg, TBTT_SYNC_CFG_BCN_AIFSN, 2);
			FUNC7(&reg, TBTT_SYNC_CFG_BCN_EXP_WIN, 32);
			FUNC7(&reg, TBTT_SYNC_CFG_TBTT_ADJUST, 16);
			FUNC6(rt2x00dev, TBTT_SYNC_CFG, reg);
		}
	}

	if (flags & CONFIG_UPDATE_MAC) {
		if (flags & CONFIG_UPDATE_TYPE &&
		    conf->sync == TSF_SYNC_AP_NONE) {
			/*
			 * The BSSID register has to be set to our own mac
			 * address in AP mode.
			 */
			FUNC3(conf->bssid, conf->mac, sizeof(conf->mac));
			update_bssid = true;
		}

		if (!FUNC1((const u8 *)conf->mac)) {
			reg = FUNC2(conf->mac[1]);
			FUNC7(&reg, MAC_ADDR_DW1_UNICAST_TO_ME_MASK, 0xff);
			conf->mac[1] = FUNC0(reg);
		}

		FUNC4(rt2x00dev, MAC_ADDR_DW0,
					      conf->mac, sizeof(conf->mac));
	}

	if ((flags & CONFIG_UPDATE_BSSID) || update_bssid) {
		if (!FUNC1((const u8 *)conf->bssid)) {
			reg = FUNC2(conf->bssid[1]);
			FUNC7(&reg, MAC_BSSID_DW1_BSS_ID_MASK, 3);
			FUNC7(&reg, MAC_BSSID_DW1_BSS_BCN_NUM, 0);
			conf->bssid[1] = FUNC0(reg);
		}

		FUNC4(rt2x00dev, MAC_BSSID_DW0,
					      conf->bssid, sizeof(conf->bssid));
	}
}