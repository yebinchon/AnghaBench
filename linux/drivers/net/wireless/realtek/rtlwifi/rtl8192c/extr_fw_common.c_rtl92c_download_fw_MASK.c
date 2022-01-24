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
struct rtlwifi_firmware_header {int /*<<< orphan*/  subversion; int /*<<< orphan*/  version; int /*<<< orphan*/  signature; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; int /*<<< orphan*/  fw_subversion; int /*<<< orphan*/  fw_version; scalar_t__ fwsize; scalar_t__ pfirmware; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum version_8192c { ____Placeholder_version_8192c } version_8192c ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ FUNC0 (struct rtlwifi_firmware_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct rtl_hal* FUNC7 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 

int FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct rtl_hal *rtlhal = FUNC7(FUNC8(hw));
	struct rtlwifi_firmware_header *pfwheader;
	u8 *pfwdata;
	u32 fwsize;
	int err;
	enum version_8192c version = rtlhal->version;

	if (!rtlhal->pfirmware)
		return 1;

	pfwheader = (struct rtlwifi_firmware_header *)rtlhal->pfirmware;
	pfwdata = (u8 *)rtlhal->pfirmware;
	fwsize = rtlhal->fwsize;
	if (FUNC0(pfwheader)) {
		FUNC1(rtlpriv, COMP_FW, DBG_DMESG,
			 "Firmware Version(%d), Signature(%#x),Size(%d)\n",
			  pfwheader->version, pfwheader->signature,
			  (int)sizeof(struct rtlwifi_firmware_header));

		rtlhal->fw_version = FUNC5(pfwheader->version);
		rtlhal->fw_subversion = pfwheader->subversion;
		pfwdata = pfwdata + sizeof(struct rtlwifi_firmware_header);
		fwsize = fwsize - sizeof(struct rtlwifi_firmware_header);
	}

	FUNC2(hw, true);
	FUNC4(hw, version, pfwdata, fwsize);
	FUNC2(hw, false);

	err = FUNC3(hw);
	if (err)
		FUNC6("Firmware is not ready to run!\n");

	return 0;
}