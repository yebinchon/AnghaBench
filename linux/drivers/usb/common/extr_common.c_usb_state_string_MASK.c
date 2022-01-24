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
typedef  enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
#define  USB_STATE_ADDRESS 136 
#define  USB_STATE_ATTACHED 135 
#define  USB_STATE_CONFIGURED 134 
#define  USB_STATE_DEFAULT 133 
#define  USB_STATE_NOTATTACHED 132 
#define  USB_STATE_POWERED 131 
#define  USB_STATE_RECONNECTING 130 
#define  USB_STATE_SUSPENDED 129 
#define  USB_STATE_UNAUTHENTICATED 128 

const char *FUNC1(enum usb_device_state state)
{
	static const char *const names[] = {
		[USB_STATE_NOTATTACHED] = "not attached",
		[USB_STATE_ATTACHED] = "attached",
		[USB_STATE_POWERED] = "powered",
		[USB_STATE_RECONNECTING] = "reconnecting",
		[USB_STATE_UNAUTHENTICATED] = "unauthenticated",
		[USB_STATE_DEFAULT] = "default",
		[USB_STATE_ADDRESS] = "addressed",
		[USB_STATE_CONFIGURED] = "configured",
		[USB_STATE_SUSPENDED] = "suspended",
	};

	if (state < 0 || state >= FUNC0(names))
		return "UNKNOWN";

	return names[state];
}