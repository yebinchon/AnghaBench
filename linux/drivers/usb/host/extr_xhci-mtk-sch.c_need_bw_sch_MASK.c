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
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct usb_host_endpoint *ep,
	enum usb_device_speed speed, int has_tt)
{
	/* only for periodic endpoints */
	if (FUNC2(&ep->desc)
		|| FUNC1(&ep->desc))
		return false;

	/*
	 * for LS & FS periodic endpoints which its device is not behind
	 * a TT are also ignored, root-hub will schedule them directly,
	 * but need set @bpkts field of endpoint context to 1.
	 */
	if (FUNC0(speed) && !has_tt)
		return false;

	return true;
}