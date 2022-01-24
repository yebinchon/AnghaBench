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
typedef  scalar_t__ u32 ;
struct rtlwifi_firmware_header {scalar_t__ signature; int /*<<< orphan*/  version; int /*<<< orphan*/  subversion; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; scalar_t__ mac_func_enable; scalar_t__ fwsize; scalar_t__ pfirmware; int /*<<< orphan*/  fw_subversion; int /*<<< orphan*/  fw_version; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum version_8192e { ____Placeholder_version_8192e } version_8192e ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ FUNC1 (struct rtlwifi_firmware_header*) ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC8 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 
 int FUNC10 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct ieee80211_hw *hw, bool buse_wake_on_wlan_fw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_hal *rtlhal = FUNC8(FUNC9(hw));
	struct rtlwifi_firmware_header *pfwheader;
	u8 *pfwdata;
	u32 fwsize;
	int err;
	enum version_8192e version = rtlhal->version;

	if (!rtlhal->pfirmware)
		return 1;

	pfwheader = (struct rtlwifi_firmware_header *)rtlhal->pfirmware;
	rtlhal->fw_version = FUNC6(pfwheader->version);
	rtlhal->fw_subversion = pfwheader->subversion;
	pfwdata = (u8 *)rtlhal->pfirmware;
	fwsize = rtlhal->fwsize;
	FUNC2(rtlpriv, COMP_FW, DBG_DMESG,
		 "normal Firmware SIZE %d\n" , fwsize);

	if (FUNC1(pfwheader)) {
		FUNC2(rtlpriv, COMP_FW, DBG_DMESG,
			 "Firmware Version(%d), Signature(%#x),Size(%d)\n",
			  pfwheader->version, pfwheader->signature,
			  (int)sizeof(struct rtlwifi_firmware_header));

		pfwdata = pfwdata + sizeof(struct rtlwifi_firmware_header);
		fwsize = fwsize - sizeof(struct rtlwifi_firmware_header);
	} else {
		FUNC2(rtlpriv, COMP_FW, DBG_DMESG,
			 "Firmware no Header, Signature(%#x)\n",
			  pfwheader->signature);
	}

	if (rtlhal->mac_func_enable) {
		if (FUNC10(rtlpriv, REG_MCUFWDL) & FUNC0(7)) {
			FUNC11(rtlpriv, REG_MCUFWDL, 0);
			FUNC7(hw);
		}
	}
	FUNC3(hw, true);
	FUNC5(hw, version, pfwdata, fwsize);
	FUNC3(hw, false);

	err = FUNC4(hw);

	return 0;
}