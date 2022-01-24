#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_12__ {int /*<<< orphan*/ * pfirmware; int /*<<< orphan*/  macphymode; void* bandset; void* current_bandtype; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int reg_fwctrl_lps; int reg_max_lps_awakeintvl; int /*<<< orphan*/  fwctrl_psmode; int /*<<< orphan*/  fwctrl_lps; int /*<<< orphan*/  inactiveps; int /*<<< orphan*/  swctrl_lps; } ;
struct TYPE_7__ {int dm_initialgain_enable; int disable_framebursting; scalar_t__ thermalvalue; scalar_t__ dm_flag; } ;
struct rtl_priv {int max_fw_size; TYPE_6__ rtlhal; TYPE_5__ io; TYPE_4__ psc; TYPE_3__* cfg; TYPE_1__ dm; } ;
struct rtl_pci {int transmit_config; int receive_config; void** irq_mask; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_9__ {TYPE_2__* mod_params; } ;
struct TYPE_8__ {int /*<<< orphan*/  fwctrl_lps; int /*<<< orphan*/  swctrl_lps; int /*<<< orphan*/  inactiveps; } ;

/* Variables and functions */
 void* BAND_ON_2_4G ; 
 int FUNC0 (int) ; 
 int CFENDFORM ; 
 int /*<<< orphan*/  FW_PS_DTIM_MODE ; 
 int /*<<< orphan*/  FW_PS_MAX_MODE ; 
 int /*<<< orphan*/  FW_PS_MIN_MODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IMR_BDOK ; 
 int IMR_BEDOK ; 
 int IMR_BKDOK ; 
 int IMR_C2HCMD ; 
 int IMR_CPWM ; 
 int IMR_HIGHDOK ; 
 int IMR_MGNTDOK ; 
 int IMR_RDU ; 
 int IMR_ROK ; 
 int IMR_RXFOVW ; 
 int IMR_VIDOK ; 
 int IMR_VODOK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int RCR_AB ; 
 int RCR_ACRC32 ; 
 int RCR_ADF ; 
 int RCR_AICV ; 
 int RCR_AM ; 
 int RCR_AMF ; 
 int RCR_APM ; 
 int RCR_APPFCS ; 
 int RCR_APP_ICV ; 
 int RCR_APP_MIC ; 
 int RCR_APP_PHYST_RXFF ; 
 int RCR_HTC_LOC_CTRL ; 
 int /*<<< orphan*/  SINGLEMAC_SINGLEPHY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rtl_fw_cb ; 
 struct rtl_hal* FUNC9 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 

int FUNC15(struct ieee80211_hw *hw)
{
	int err;
	struct rtl_priv *rtlpriv = FUNC12(hw);
	struct rtl_pci *rtlpci = FUNC10(FUNC11(hw));
	struct rtl_hal *rtlhal = FUNC9(FUNC12(hw));
	char *fw_name;

	FUNC7(hw);

	rtlpriv->dm.dm_initialgain_enable = true;
	rtlpriv->dm.dm_flag = 0;
	rtlpriv->dm.disable_framebursting = false;
	rtlpriv->dm.thermalvalue = 0;
	rtlpci->transmit_config = CFENDFORM | FUNC0(12) | FUNC0(13);

	/* compatible 5G band 88ce just 2.4G band & smsp */
	rtlpriv->rtlhal.current_bandtype = BAND_ON_2_4G;
	rtlpriv->rtlhal.bandset = BAND_ON_2_4G;
	rtlpriv->rtlhal.macphymode = SINGLEMAC_SINGLEPHY;

	rtlpci->receive_config = (RCR_APPFCS |
				  RCR_AMF |
				  RCR_ADF |
				  RCR_APP_MIC |
				  RCR_APP_ICV |
				  RCR_AICV |
				  RCR_ACRC32 |
				  RCR_AB |
				  RCR_AM |
				  RCR_APM |
				  RCR_APP_PHYST_RXFF | RCR_HTC_LOC_CTRL | 0);

	rtlpci->irq_mask[0] =
	    (u32) (IMR_ROK |
		   IMR_VODOK |
		   IMR_VIDOK |
		   IMR_BEDOK |
		   IMR_BKDOK |
		   IMR_MGNTDOK |
		   IMR_HIGHDOK | IMR_BDOK | IMR_RDU | IMR_RXFOVW | 0);

	rtlpci->irq_mask[1] = (u32) (IMR_CPWM | IMR_C2HCMD | 0);

	/* for LPS & IPS */
	rtlpriv->psc.inactiveps = rtlpriv->cfg->mod_params->inactiveps;
	rtlpriv->psc.swctrl_lps = rtlpriv->cfg->mod_params->swctrl_lps;
	rtlpriv->psc.fwctrl_lps = rtlpriv->cfg->mod_params->fwctrl_lps;
	if (!rtlpriv->psc.inactiveps)
		FUNC5("rtl8192ce: Power Save off (module option)\n");
	if (!rtlpriv->psc.fwctrl_lps)
		FUNC5("rtl8192ce: FW Power Save off (module option)\n");
	rtlpriv->psc.reg_fwctrl_lps = 3;
	rtlpriv->psc.reg_max_lps_awakeintvl = 5;
	/* for ASPM, you can close aspm through
	 * set const_support_pciaspm = 0 */
	FUNC8(hw);

	if (rtlpriv->psc.reg_fwctrl_lps == 1)
		rtlpriv->psc.fwctrl_psmode = FW_PS_MIN_MODE;
	else if (rtlpriv->psc.reg_fwctrl_lps == 2)
		rtlpriv->psc.fwctrl_psmode = FW_PS_MAX_MODE;
	else if (rtlpriv->psc.reg_fwctrl_lps == 3)
		rtlpriv->psc.fwctrl_psmode = FW_PS_DTIM_MODE;

	/* for firmware buf */
	rtlpriv->rtlhal.pfirmware = FUNC14(0x4000);
	if (!rtlpriv->rtlhal.pfirmware) {
		FUNC4("Can't alloc buffer for fw\n");
		return 1;
	}

	/* request fw */
	if (FUNC3(rtlhal->version) &&
	    !FUNC2(rtlhal->version))
		fw_name = "rtlwifi/rtl8192cfwU.bin";
	else if (FUNC1(rtlhal->version))
		fw_name = "rtlwifi/rtl8192cfwU_B.bin";
	else
		fw_name = "rtlwifi/rtl8192cfw.bin";

	rtlpriv->max_fw_size = 0x4000;
	FUNC5("Using firmware %s\n", fw_name);
	err = FUNC6(THIS_MODULE, 1, fw_name,
				      rtlpriv->io.dev, GFP_KERNEL, hw,
				      rtl_fw_cb);
	if (err) {
		FUNC4("Failed to request firmware!\n");
		FUNC13(rtlpriv->rtlhal.pfirmware);
		rtlpriv->rtlhal.pfirmware = NULL;
		return 1;
	}

	return 0;
}