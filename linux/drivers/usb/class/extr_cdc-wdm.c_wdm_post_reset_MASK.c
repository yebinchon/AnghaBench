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
struct wdm_device {int /*<<< orphan*/  rlock; int /*<<< orphan*/  wlock; int /*<<< orphan*/  flags; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDM_OVERFLOW ; 
 int /*<<< orphan*/  WDM_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wdm_device*) ; 
 struct wdm_device* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct wdm_device *desc = FUNC3(intf);
	int rv;

	FUNC0(WDM_OVERFLOW, &desc->flags);
	FUNC0(WDM_RESETTING, &desc->flags);
	rv = FUNC2(desc);
	FUNC1(&desc->wlock);
	FUNC1(&desc->rlock);
	return rv;
}