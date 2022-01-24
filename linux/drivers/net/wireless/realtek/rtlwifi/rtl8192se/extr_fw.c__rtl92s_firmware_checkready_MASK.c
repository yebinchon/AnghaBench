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
typedef  int u8 ;
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ pfirmware; } ;
struct rt_firmware {int fwstatus; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum fw_status { ____Placeholder_fw_status } fw_status ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int DMEM_CODE_DONE ; 
 int EMEM_CHK_RPT ; 
 int EMEM_CODE_DONE ; 
 int FWRDY ; 
#define  FW_STATUS_LOAD_DMEM 130 
#define  FW_STATUS_LOAD_EMEM 129 
#define  FW_STATUS_LOAD_IMEM 128 
 int IMEM_CHK_RPT ; 
 int IMEM_CODE_DONE ; 
 int /*<<< orphan*/  LBKMD_SEL ; 
 int /*<<< orphan*/  LBK_NORMAL ; 
 int LOAD_FW_READY ; 
 int /*<<< orphan*/  RCR ; 
 int RCR_APPFCS ; 
 int RCR_APP_ICV ; 
 int RCR_APP_MIC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  TCR ; 
 int TCR_ICV ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct ieee80211_hw *hw,
		u8 loadfw_status)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	struct rt_firmware *firmware = (struct rt_firmware *)rtlhal->pfirmware;
	u32 tmpu4b;
	u8 cpustatus = 0;
	short pollingcnt = 1000;
	bool rtstatus = true;

	FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
		 "LoadStaus(%d)\n", loadfw_status);

	firmware->fwstatus = (enum fw_status)loadfw_status;

	switch (loadfw_status) {
	case FW_STATUS_LOAD_IMEM:
		/* Polling IMEM code done. */
		do {
			cpustatus = FUNC5(rtlpriv, TCR);
			if (cpustatus & IMEM_CODE_DONE)
				break;
			FUNC9(5);
		} while (pollingcnt--);

		if (!(cpustatus & IMEM_CHK_RPT) || (pollingcnt <= 0)) {
			FUNC2("FW_STATUS_LOAD_IMEM FAIL CPU, Status=%x\n",
			       cpustatus);
			goto status_check_fail;
		}
		break;

	case FW_STATUS_LOAD_EMEM:
		/* Check Put Code OK and Turn On CPU */
		/* Polling EMEM code done. */
		do {
			cpustatus = FUNC5(rtlpriv, TCR);
			if (cpustatus & EMEM_CODE_DONE)
				break;
			FUNC9(5);
		} while (pollingcnt--);

		if (!(cpustatus & EMEM_CHK_RPT) || (pollingcnt <= 0)) {
			FUNC2("FW_STATUS_LOAD_EMEM FAIL CPU, Status=%x\n",
			       cpustatus);
			goto status_check_fail;
		}

		/* Turn On CPU */
		rtstatus = FUNC1(hw);
		if (!rtstatus) {
			FUNC2("Enable CPU fail!\n");
			goto status_check_fail;
		}
		break;

	case FW_STATUS_LOAD_DMEM:
		/* Polling DMEM code done */
		do {
			cpustatus = FUNC5(rtlpriv, TCR);
			if (cpustatus & DMEM_CODE_DONE)
				break;
			FUNC9(5);
		} while (pollingcnt--);

		if (!(cpustatus & DMEM_CODE_DONE) || (pollingcnt <= 0)) {
			FUNC2("Polling DMEM code done fail ! cpustatus(%#x)\n",
			       cpustatus);
			goto status_check_fail;
		}

		FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
			 "DMEM code download success, cpustatus(%#x)\n",
			 cpustatus);

		/* Prevent Delay too much and being scheduled out */
		/* Polling Load Firmware ready */
		pollingcnt = 2000;
		do {
			cpustatus = FUNC5(rtlpriv, TCR);
			if (cpustatus & FWRDY)
				break;
			FUNC9(40);
		} while (pollingcnt--);

		FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
			 "Polling Load Firmware ready, cpustatus(%x)\n",
			 cpustatus);

		if (((cpustatus & LOAD_FW_READY) != LOAD_FW_READY) ||
		    (pollingcnt <= 0)) {
			FUNC2("Polling Load Firmware ready fail ! cpustatus(%x)\n",
			       cpustatus);
			goto status_check_fail;
		}

		/* If right here, we can set TCR/RCR to desired value  */
		/* and config MAC lookback mode to normal mode */
		tmpu4b = FUNC6(rtlpriv, TCR);
		FUNC8(rtlpriv, TCR, (tmpu4b & (~TCR_ICV)));

		tmpu4b = FUNC6(rtlpriv, RCR);
		FUNC8(rtlpriv, RCR, (tmpu4b | RCR_APPFCS |
				RCR_APP_ICV | RCR_APP_MIC));

		FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
			 "Current RCR settings(%#x)\n", tmpu4b);

		/* Set to normal mode. */
		FUNC7(rtlpriv, LBKMD_SEL, LBK_NORMAL);
		break;

	default:
		FUNC2("Unknown status check!\n");
		rtstatus = false;
		break;
	}

status_check_fail:
	FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
		 "loadfw_status(%d), rtstatus(%x)\n",
		 loadfw_status, rtstatus);
	return rtstatus;
}