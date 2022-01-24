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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtl_usb_priv {int dummy; } ;
struct rtl_usb {int out_ep_nums; int out_queue_sel; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_bw_mode ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_CHAN_HT20 ; 
 int /*<<< orphan*/  RTL92C_DRIVER_INFO_SIZE ; 
 int /*<<< orphan*/  TX_PAGE_BOUNDARY ; 
 int /*<<< orphan*/  WMM_CHIP_A_TX_PAGE_BOUNDARY ; 
 int /*<<< orphan*/  WMM_CHIP_B_TX_PAGE_BOUNDARY ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*) ; 
 int FUNC15 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC20 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC21 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC22 (struct rtl_usb_priv*) ; 
 struct rtl_usb_priv* FUNC23 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC24 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC21(hw);
	struct rtl_hal *rtlhal = FUNC20(FUNC21(hw));
	struct rtl_usb_priv *usb_priv = FUNC23(hw);
	struct rtl_usb *rtlusb = FUNC22(usb_priv);
	int err = 0;
	u32	boundary = 0;
	u8 wmm_enable = false; /* TODO */
	u8 out_ep_nums = rtlusb->out_ep_nums;
	u8 queue_sel = rtlusb->out_queue_sel;

	err = FUNC4(hw);

	if (err) {
		FUNC8("Failed to init power on!\n");
		return err;
	}
	if (!wmm_enable) {
		boundary = TX_PAGE_BOUNDARY;
	} else { /* for WMM */
		boundary = (FUNC1(rtlhal->version))
					? WMM_CHIP_B_TX_PAGE_BOUNDARY
					: WMM_CHIP_A_TX_PAGE_BOUNDARY;
	}
	if (false == FUNC15(hw, boundary)) {
		FUNC8("Failed to init LLT Table!\n");
		return -EINVAL;
	}
	FUNC6(hw, wmm_enable, out_ep_nums,
					  queue_sel);
	FUNC2(hw, wmm_enable);
	FUNC5(hw, wmm_enable, out_ep_nums,
				     queue_sel);
	/* Get Rx PHY status in order to report RSSI and others. */
	FUNC12(hw, RTL92C_DRIVER_INFO_SIZE);
	FUNC14(hw);
	FUNC16(hw);
	FUNC7(hw);
	FUNC9(hw);
	FUNC13(hw);
	FUNC17(hw);
	FUNC18(hw);
	rtlpriv->cfg->ops->set_bw_mode(hw, NL80211_CHAN_HT20);
	FUNC19(hw, FUNC0(rtlhal->version));
	FUNC3(hw);
	FUNC10(hw);
	FUNC11(hw);
	return err;
}