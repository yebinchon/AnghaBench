#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct rtlwifi_firmware_header {int /*<<< orphan*/  signature; int /*<<< orphan*/  version; int /*<<< orphan*/  subversion; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int version; scalar_t__ mac_func_enable; scalar_t__ fwsize; scalar_t__ pfirmware; int /*<<< orphan*/  fw_subversion; void* fw_version; scalar_t__ wowlan_fwsize; scalar_t__ wowlan_firmware; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum version_8821ae { ____Placeholder_version_8821ae } version_8821ae ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  HAL_DEF_WOWLAN ; 
 scalar_t__ FUNC1 (struct rtlwifi_firmware_header*) ; 
 scalar_t__ FUNC2 (struct rtlwifi_firmware_header*) ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC10 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC11 (struct ieee80211_hw*) ; 
 int FUNC12 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct ieee80211_hw *hw, bool buse_wake_on_wlan_fw)
{
	struct rtl_priv *rtlpriv = FUNC11(hw);
	struct rtl_hal *rtlhal = FUNC10(FUNC11(hw));
	struct rtlwifi_firmware_header *pfwheader;
	u8 *pfwdata;
	u32 fwsize;
	int err;
	bool support_remote_wakeup;
	enum version_8821ae version = rtlhal->version;

	rtlpriv->cfg->ops->get_hw_reg(hw, HAL_DEF_WOWLAN,
				      (u8 *)(&support_remote_wakeup));

	if (support_remote_wakeup)
		FUNC6(rtlpriv);

	if (buse_wake_on_wlan_fw) {
		if (!rtlhal->wowlan_firmware)
			return 1;

		pfwheader =
		  (struct rtlwifi_firmware_header *)rtlhal->wowlan_firmware;
		rtlhal->fw_version = FUNC8(pfwheader->version);
		rtlhal->fw_subversion = pfwheader->subversion;
		pfwdata = (u8 *)rtlhal->wowlan_firmware;
		fwsize = rtlhal->wowlan_fwsize;
	} else {
		if (!rtlhal->pfirmware)
			return 1;

		pfwheader =
		  (struct rtlwifi_firmware_header *)rtlhal->pfirmware;
		rtlhal->fw_version = FUNC8(pfwheader->version);
		rtlhal->fw_subversion = pfwheader->subversion;
		pfwdata = (u8 *)rtlhal->pfirmware;
		fwsize = rtlhal->fwsize;
	}

	FUNC3(rtlpriv, COMP_FW, DBG_DMESG,
		 "%s Firmware SIZE %d\n",
		 buse_wake_on_wlan_fw ? "Wowlan" : "Normal", fwsize);

	if (FUNC1(pfwheader) ||
	    FUNC2(pfwheader)) {
		FUNC3(rtlpriv, COMP_FW, DBG_DMESG,
			 "Firmware Version(%d), Signature(%#x)\n",
			 pfwheader->version, pfwheader->signature);

		pfwdata = pfwdata + sizeof(struct rtlwifi_firmware_header);
		fwsize = fwsize - sizeof(struct rtlwifi_firmware_header);
	}

	if (rtlhal->mac_func_enable) {
		if (FUNC12(rtlpriv, REG_MCUFWDL) & FUNC0(7)) {
			FUNC13(rtlpriv, REG_MCUFWDL, 0x00);
			FUNC9(hw);
		}
	}
	FUNC4(hw, true);
	FUNC7(hw, version, pfwdata, fwsize);
	FUNC4(hw, false);

	err = FUNC5(hw);
	if (err) {
		FUNC3(rtlpriv, COMP_ERR, DBG_DMESG,
			 "Firmware is not ready to run!\n");
	} else {
		FUNC3(rtlpriv, COMP_FW, DBG_LOUD,
			 "Firmware is ready to run!\n");
	}

	return 0;
}