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
struct TYPE_8__ {int /*<<< orphan*/ * pfirmware; int /*<<< orphan*/  version; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int dm_initialgain_enable; int disable_framebursting; scalar_t__ thermalvalue; scalar_t__ dm_flag; } ;
struct rtl_priv {int max_fw_size; TYPE_4__ rtlhal; TYPE_3__ io; TYPE_2__* cfg; TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {char* alt_fw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtl_fw_cb ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	int err;
	char *fw_name;

	rtlpriv->dm.dm_initialgain_enable = true;
	rtlpriv->dm.dm_flag = 0;
	rtlpriv->dm.disable_framebursting = false;
	rtlpriv->dm.thermalvalue = 0;

	/* for firmware buf */
	rtlpriv->rtlhal.pfirmware = FUNC8(0x4000);
	if (!rtlpriv->rtlhal.pfirmware) {
		FUNC3("Can't alloc buffer for fw\n");
		return 1;
	}
	if (FUNC2(rtlpriv->rtlhal.version) &&
	    !FUNC1(rtlpriv->rtlhal.version)) {
		fw_name = "rtlwifi/rtl8192cufw_A.bin";
	} else if (FUNC0(rtlpriv->rtlhal.version)) {
		fw_name = "rtlwifi/rtl8192cufw_B.bin";
	} else {
		fw_name = "rtlwifi/rtl8192cufw_TMSC.bin";
	}
	/* provide name of alternative file */
	rtlpriv->cfg->alt_fw_name = "rtlwifi/rtl8192cufw.bin";
	FUNC4("Loading firmware %s\n", fw_name);
	rtlpriv->max_fw_size = 0x4000;
	err = FUNC5(THIS_MODULE, 1,
				      fw_name, rtlpriv->io.dev,
				      GFP_KERNEL, hw, rtl_fw_cb);
	if (err) {
		FUNC7(rtlpriv->rtlhal.pfirmware);
		rtlpriv->rtlhal.pfirmware = NULL;
	}
	return err;
}