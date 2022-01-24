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
struct zd_usb {int /*<<< orphan*/  was_running; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; struct zd_usb usb; } ;
struct zd_mac {TYPE_1__ chip; int /*<<< orphan*/  flags; } ;
struct usb_interface {scalar_t__ condition; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ USB_INTERFACE_BOUND ; 
 int /*<<< orphan*/  ZD_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ieee80211_hw* FUNC2 (struct usb_interface*) ; 
 struct zd_mac* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_usb*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct ieee80211_hw *hw = FUNC2(intf);
	struct zd_mac *mac;
	struct zd_usb *usb;

	if (!hw || intf->condition != USB_INTERFACE_BOUND)
		return 0;

	mac = FUNC3(hw);
	usb = &mac->chip.usb;

	usb->was_running = FUNC1(ZD_DEVICE_RUNNING, &mac->flags);

	FUNC4(usb);

	FUNC0(&mac->chip.mutex);
	return 0;
}