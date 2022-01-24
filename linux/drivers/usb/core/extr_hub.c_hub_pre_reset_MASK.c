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
struct usb_interface {int dummy; } ;
struct usb_hub {int in_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUB_PRE_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hub*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 struct usb_hub* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf)
{
	struct usb_hub *hub = FUNC2(intf);

	FUNC1(hub, HUB_PRE_RESET);
	hub->in_reset = 1;
	FUNC0(hub);
	return 0;
}