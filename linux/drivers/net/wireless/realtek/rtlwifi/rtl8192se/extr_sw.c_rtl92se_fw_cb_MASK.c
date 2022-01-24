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
struct TYPE_2__ {scalar_t__ pfirmware; } ;
struct rtl_priv {scalar_t__ max_fw_size; TYPE_1__ rtlhal; int /*<<< orphan*/  firmware_loading_complete; } ;
struct rt_firmware {scalar_t__ sz_fw_tmpbufferlen; int /*<<< orphan*/  sz_fw_tmpbuffer; } ;
struct ieee80211_hw {int dummy; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC6(const struct firmware *firmware, void *context)
{
	struct ieee80211_hw *hw = context;
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rt_firmware *pfirmware = NULL;
	char *fw_name = "rtlwifi/rtl8192sefw.bin";

	FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
			 "Firmware callback routine entered!\n");
	FUNC1(&rtlpriv->firmware_loading_complete);
	if (!firmware) {
		FUNC3("Firmware %s not available\n", fw_name);
		rtlpriv->max_fw_size = 0;
		return;
	}
	if (firmware->size > rtlpriv->max_fw_size) {
		FUNC3("Firmware is too big!\n");
		rtlpriv->max_fw_size = 0;
		FUNC4(firmware);
		return;
	}
	pfirmware = (struct rt_firmware *)rtlpriv->rtlhal.pfirmware;
	FUNC2(pfirmware->sz_fw_tmpbuffer, firmware->data, firmware->size);
	pfirmware->sz_fw_tmpbufferlen = firmware->size;
	FUNC4(firmware);
}