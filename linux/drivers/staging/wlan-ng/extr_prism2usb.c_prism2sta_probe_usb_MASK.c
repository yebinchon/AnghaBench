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
struct wlandevice {int /*<<< orphan*/  msdstate; int /*<<< orphan*/  netdev; struct wlandevice* wlandev; struct wlandevice* priv; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct hfa384x {int /*<<< orphan*/  msdstate; int /*<<< orphan*/  netdev; struct hfa384x* wlandev; struct hfa384x* priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  P80211ENUM_ifstate_enable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WLAN_MSD_HWPRESENT ; 
 struct wlandevice* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct wlandevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wlandevice*,struct usb_device*) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct wlandevice*) ; 
 scalar_t__ prism2_doreset ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,struct wlandevice*) ; 
 int /*<<< orphan*/  prism2_reset_holdtime ; 
 int /*<<< orphan*/  prism2_reset_settletime ; 
 int /*<<< orphan*/  FUNC8 (struct wlandevice*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wlandevice*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,struct wlandevice*) ; 
 scalar_t__ FUNC13 (struct wlandevice*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct wlandevice*) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *interface,
			       const struct usb_device_id *id)
{
	struct usb_device *dev;

	struct wlandevice *wlandev = NULL;
	struct hfa384x *hw = NULL;
	int result = 0;

	dev = FUNC5(interface);
	wlandev = FUNC1();
	if (!wlandev) {
		FUNC2(&interface->dev, "Memory allocation failure.\n");
		result = -EIO;
		goto failed;
	}
	hw = wlandev->priv;

	if (FUNC13(wlandev, &interface->dev) != 0) {
		FUNC2(&interface->dev, "wlan_setup() failed.\n");
		result = -EIO;
		goto failed;
	}

	/* Initialize the hw data */
	FUNC4(hw, dev);
	hw->wlandev = wlandev;

	/* Register the wlandev, this gets us a name and registers the
	 * linux netdevice.
	 */
	FUNC0(wlandev->netdev, &interface->dev);

	/* Do a chip-level reset on the MAC */
	if (prism2_doreset) {
		result = FUNC3(hw,
					   prism2_reset_holdtime,
					   prism2_reset_settletime, 0);
		if (result != 0) {
			result = -EIO;
			FUNC2(&interface->dev,
				"hfa384x_corereset() failed.\n");
			goto failed_reset;
		}
	}

	FUNC10(dev);

	wlandev->msdstate = WLAN_MSD_HWPRESENT;

	/* Try and load firmware, then enable card before we register */
	FUNC7(dev, wlandev);
	FUNC8(wlandev, P80211ENUM_ifstate_enable);

	if (FUNC9(wlandev) != 0) {
		FUNC2(&interface->dev, "register_wlandev() failed.\n");
		result = -EIO;
		goto failed_register;
	}

	goto done;

failed_register:
	FUNC11(dev);
failed_reset:
	FUNC14(wlandev);
failed:
	FUNC6(wlandev);
	FUNC6(hw);
	wlandev = NULL;

done:
	FUNC12(interface, wlandev);
	return result;
}