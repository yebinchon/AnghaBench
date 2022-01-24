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
struct usb_hub {int /*<<< orphan*/  kref; int /*<<< orphan*/  events; int /*<<< orphan*/  intfdev; scalar_t__ disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  hub_release ; 
 int /*<<< orphan*/  hub_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_hub *hub)
{
	struct usb_interface *intf;

	if (hub->disconnected || FUNC6(&hub->events))
		return;

	/*
	 * Suppress autosuspend until the event is proceed.
	 *
	 * Be careful and make sure that the symmetric operation is
	 * always called. We are here only when there is no pending
	 * work for this hub. Therefore put the interface either when
	 * the new work is called or when it is canceled.
	 */
	intf = FUNC3(hub->intfdev);
	FUNC4(intf);
	FUNC0(&hub->kref);

	if (FUNC2(hub_wq, &hub->events))
		return;

	/* the work has already been scheduled */
	FUNC5(intf);
	FUNC1(&hub->kref, hub_release);
}