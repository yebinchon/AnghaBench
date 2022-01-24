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
typedef  int /*<<< orphan*/  u32 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {struct usb_device* udev; struct usb_interface* intf; } ;
struct rtl_usb_priv {TYPE_3__ dev; } ;
struct TYPE_12__ {int mac80211_registered; } ;
struct TYPE_10__ {int /*<<< orphan*/  interface; } ;
struct TYPE_8__ {int /*<<< orphan*/  lps_change_work; int /*<<< orphan*/  fill_h2c_cmd; } ;
struct TYPE_7__ {int /*<<< orphan*/  usb_lock; } ;
struct rtl_priv {int /*<<< orphan*/  firmware_loading_complete; int /*<<< orphan*/  status; TYPE_6__ mac80211; struct rtl_hal_cfg* cfg; int /*<<< orphan*/ * intf_ops; TYPE_4__ rtlhal; scalar_t__ usb_data_index; TYPE_2__ works; TYPE_1__ locks; int /*<<< orphan*/  usb_data; struct ieee80211_hw* hw; } ;
struct rtl_hal_cfg {TYPE_5__* ops; } ;
struct ieee80211_hw {struct rtl_priv* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* init_sw_leds ) (struct ieee80211_hw*) ;scalar_t__ (* init_sw_vars ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* read_eeprom_info ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* read_chip_version ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTF_USB ; 
 int /*<<< orphan*/  RTL_STATUS_INTERFACE_START ; 
 int /*<<< orphan*/  RTL_USB_MAX_RX_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ieee80211_hw* FUNC7 (int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl_usb_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rtl_fill_h2c_cmd_work_callback ; 
 int FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rtl_lps_change_work_callback ; 
 int /*<<< orphan*/  rtl_ops ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rtl_usb_ops ; 
 struct rtl_usb_priv* FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC22 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC23 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_interface*,struct ieee80211_hw*) ; 

int FUNC27(struct usb_interface *intf,
		  const struct usb_device_id *id,
		  struct rtl_hal_cfg *rtl_hal_cfg)
{
	int err;
	struct ieee80211_hw *hw = NULL;
	struct rtl_priv *rtlpriv = NULL;
	struct usb_device	*udev;
	struct rtl_usb_priv *usb_priv;

	hw = FUNC7(sizeof(struct rtl_priv) +
				sizeof(struct rtl_usb_priv), &rtl_ops);
	if (!hw) {
		FUNC2(true, "rtl_usb: ieee80211 alloc failed\n");
		return -ENOMEM;
	}
	rtlpriv = hw->priv;
	rtlpriv->hw = hw;
	rtlpriv->usb_data = FUNC11(RTL_USB_MAX_RX_COUNT, sizeof(u32),
				    GFP_KERNEL);
	if (!rtlpriv->usb_data)
		return -ENOMEM;

	/* this spin lock must be initialized early */
	FUNC19(&rtlpriv->locks.usb_lock);
	FUNC0(&rtlpriv->works.fill_h2c_cmd,
		  rtl_fill_h2c_cmd_work_callback);
	FUNC0(&rtlpriv->works.lps_change_work,
		  rtl_lps_change_work_callback);

	rtlpriv->usb_data_index = 0;
	FUNC9(&rtlpriv->firmware_loading_complete);
	FUNC1(hw, &intf->dev);
	udev = FUNC10(intf);
	FUNC24(udev);
	usb_priv = FUNC17(hw);
	FUNC12(usb_priv, 0, sizeof(*usb_priv));
	usb_priv->dev.intf = intf;
	usb_priv->dev.udev = udev;
	FUNC26(intf, hw);
	/* init cfg & intf_ops */
	rtlpriv->rtlhal.interface = INTF_USB;
	rtlpriv->cfg = rtl_hal_cfg;
	rtlpriv->intf_ops = &rtl_usb_ops;
	/* Init IO handler */
	FUNC4(&udev->dev, hw);
	rtlpriv->cfg->ops->read_chip_version(hw);
	/*like read eeprom and so on */
	rtlpriv->cfg->ops->read_eeprom_info(hw);
	err = FUNC3(hw);
	if (err)
		goto error_out2;
	FUNC16(hw);
	/* Init mac80211 sw */
	err = FUNC15(hw);
	if (err) {
		FUNC13("Can't allocate sw for mac80211\n");
		goto error_out2;
	}
	if (rtlpriv->cfg->ops->init_sw_vars(hw)) {
		FUNC13("Can't init_sw_vars\n");
		goto error_out;
	}
	rtlpriv->cfg->ops->init_sw_leds(hw);

	err = FUNC8(hw);
	if (err) {
		FUNC13("Can't register mac80211 hw.\n");
		err = -ENODEV;
		goto error_out;
	}
	rtlpriv->mac80211.mac80211_registered = 1;

	FUNC18(RTL_STATUS_INTERFACE_START, &rtlpriv->status);
	return 0;

error_out:
	FUNC14(hw);
error_out2:
	FUNC5(hw);
	FUNC25(udev);
	FUNC6(&rtlpriv->firmware_loading_complete);
	return -ENODEV;
}