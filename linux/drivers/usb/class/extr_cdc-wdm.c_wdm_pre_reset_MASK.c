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
struct wdm_device {int /*<<< orphan*/  service_outs_intr; int /*<<< orphan*/  rxwork; int /*<<< orphan*/  wlock; int /*<<< orphan*/  rlock; int /*<<< orphan*/  wait; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  rerr; int /*<<< orphan*/  flags; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  WDM_IN_USE ; 
 int /*<<< orphan*/  WDM_READ ; 
 int /*<<< orphan*/  WDM_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct wdm_device* FUNC8 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *intf)
{
	struct wdm_device *desc = FUNC8(intf);

	/*
	 * we notify everybody using poll of
	 * an exceptional situation
	 * must be done before recovery lest a spontaneous
	 * message from the device is lost
	 */
	FUNC5(&desc->iuspin);
	FUNC4(WDM_RESETTING, &desc->flags);	/* inform read/write */
	FUNC4(WDM_READ, &desc->flags);	/* unblock read */
	FUNC1(WDM_IN_USE, &desc->flags);	/* unblock write */
	desc->rerr = -EINTR;
	FUNC6(&desc->iuspin);
	FUNC7(&desc->wait);
	FUNC3(&desc->rlock);
	FUNC3(&desc->wlock);
	FUNC2(desc);
	FUNC0(&desc->rxwork);
	FUNC0(&desc->service_outs_intr);
	return 0;
}