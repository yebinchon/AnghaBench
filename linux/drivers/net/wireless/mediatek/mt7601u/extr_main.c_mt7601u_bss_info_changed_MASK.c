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
typedef  int u32 ;
struct mt7601u_dev {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct ieee80211_bss_conf {int basic_rates; scalar_t__ use_short_slot; int /*<<< orphan*/  use_short_preamble; int /*<<< orphan*/  ht_operation_mode; int /*<<< orphan*/  use_cts_prot; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_CTS_PROT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int BSS_CHANGED_HT ; 
 int /*<<< orphan*/  MT_BKOFF_SLOT_CFG ; 
 int /*<<< orphan*/  MT_BKOFF_SLOT_CFG_SLOTTIME ; 
 int /*<<< orphan*/  MT_HT_FBK_CFG0 ; 
 int /*<<< orphan*/  MT_HT_FBK_CFG1 ; 
 int /*<<< orphan*/  MT_LEGACY_BASIC_RATE ; 
 int /*<<< orphan*/  MT_LG_FBK_CFG0 ; 
 int /*<<< orphan*/  MT_LG_FBK_CFG1 ; 
 int /*<<< orphan*/  MT_MAC_BSSID_DW0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,struct ieee80211_bss_conf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			 struct ieee80211_bss_conf *info, u32 changed)
{
	struct mt7601u_dev *dev = hw->priv;

	FUNC9(&dev->mutex);

	if (changed & BSS_CHANGED_ASSOC)
		FUNC5(dev, info);

	if (changed & BSS_CHANGED_BSSID) {
		FUNC1(dev, MT_MAC_BSSID_DW0, info->bssid);

		/* Note: this is a hack because beacon_int is not changed
		 *	 on leave nor is any more appropriate event generated.
		 *	 rt2x00 doesn't seem to be bothered though.
		 */
		if (FUNC0(info->bssid))
			FUNC2(dev, false, 0);
	}

	if (changed & BSS_CHANGED_BASIC_RATES) {
		FUNC7(dev, MT_LEGACY_BASIC_RATE, info->basic_rates);
		FUNC7(dev, MT_HT_FBK_CFG0, 0x65432100);
		FUNC7(dev, MT_HT_FBK_CFG1, 0xedcba980);
		FUNC7(dev, MT_LG_FBK_CFG0, 0xedcba988);
		FUNC7(dev, MT_LG_FBK_CFG1, 0x00002100);
	}

	if (changed & BSS_CHANGED_BEACON_INT)
		FUNC2(dev, true, info->beacon_int);

	if (changed & BSS_CHANGED_HT || changed & BSS_CHANGED_ERP_CTS_PROT)
		FUNC3(dev, info->use_cts_prot,
					   info->ht_operation_mode);

	if (changed & BSS_CHANGED_ERP_PREAMBLE)
		FUNC4(dev, info->use_short_preamble);

	if (changed & BSS_CHANGED_ERP_SLOT) {
		int slottime = info->use_short_slot ? 9 : 20;

		FUNC8(dev, MT_BKOFF_SLOT_CFG,
			       MT_BKOFF_SLOT_CFG_SLOTTIME, slottime);
	}

	if (changed & BSS_CHANGED_ASSOC)
		FUNC6(dev);

	FUNC10(&dev->mutex);
}