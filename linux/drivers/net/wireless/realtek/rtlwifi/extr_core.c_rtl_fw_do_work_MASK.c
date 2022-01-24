#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ fwsize; scalar_t__ wowlan_fwsize; int /*<<< orphan*/  wowlan_firmware; int /*<<< orphan*/  pfirmware; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct rtl_priv {scalar_t__ max_fw_size; TYPE_3__ rtlhal; TYPE_2__* cfg; TYPE_1__ io; int /*<<< orphan*/  firmware_loading_complete; } ;
struct ieee80211_hw {int dummy; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {scalar_t__ alt_fw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC8(const struct firmware *firmware, void *context,
			   bool is_wow)
{
	struct ieee80211_hw *hw = context;
	struct rtl_priv *rtlpriv = FUNC7(hw);
	int err;

	FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
		 "Firmware callback routine entered!\n");
	FUNC1(&rtlpriv->firmware_loading_complete);
	if (!firmware) {
		if (rtlpriv->cfg->alt_fw_name) {
			err = FUNC6(&firmware,
					       rtlpriv->cfg->alt_fw_name,
					       rtlpriv->io.dev);
			FUNC4("Loading alternative firmware %s\n",
				rtlpriv->cfg->alt_fw_name);
			if (!err)
				goto found_alt;
		}
		FUNC3("Selected firmware is not available\n");
		rtlpriv->max_fw_size = 0;
		return;
	}
found_alt:
	if (firmware->size > rtlpriv->max_fw_size) {
		FUNC3("Firmware is too big!\n");
		FUNC5(firmware);
		return;
	}
	if (!is_wow) {
		FUNC2(rtlpriv->rtlhal.pfirmware, firmware->data,
		       firmware->size);
		rtlpriv->rtlhal.fwsize = firmware->size;
	} else {
		FUNC2(rtlpriv->rtlhal.wowlan_firmware, firmware->data,
		       firmware->size);
		rtlpriv->rtlhal.wowlan_fwsize = firmware->size;
	}
	FUNC5(firmware);
}