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
struct zd_usb {int /*<<< orphan*/  submitted_cmds; int /*<<< orphan*/  intf; } ;
struct usb_interface {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_usb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ieee80211_hw*) ; 

void FUNC7(struct zd_usb *usb, struct ieee80211_hw *hw,
	         struct usb_interface *intf)
{
	FUNC4(usb, 0, sizeof(*usb));
	usb->intf = FUNC5(intf);
	FUNC6(usb->intf, hw);
	FUNC0(&usb->submitted_cmds);
	FUNC1(usb);
	FUNC3(usb);
	FUNC2(usb);
}