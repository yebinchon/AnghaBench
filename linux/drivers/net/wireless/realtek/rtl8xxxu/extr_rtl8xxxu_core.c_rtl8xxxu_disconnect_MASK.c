#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct rtl8xxxu_priv {TYPE_2__* udev; int /*<<< orphan*/  h2c_mutex; int /*<<< orphan*/  usb_buf_mutex; int /*<<< orphan*/  fw_data; TYPE_1__* fops; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* power_off ) (struct rtl8xxxu_priv*) ;} ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8xxxu_priv*) ; 
 struct ieee80211_hw* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *interface)
{
	struct rtl8xxxu_priv *priv;
	struct ieee80211_hw *hw;

	hw = FUNC6(interface);
	priv = hw->priv;

	FUNC2(hw);

	priv->fops->power_off(priv);

	FUNC9(interface, NULL);

	FUNC0(&priv->udev->dev, "disconnecting\n");

	FUNC3(priv->fw_data);
	FUNC4(&priv->usb_buf_mutex);
	FUNC4(&priv->h2c_mutex);

	if (priv->udev->state != USB_STATE_NOTATTACHED) {
		FUNC0(&priv->udev->dev,
			 "Device still attached, trying to reset\n");
		FUNC8(priv->udev);
	}
	FUNC7(priv->udev);
	FUNC1(hw);
}