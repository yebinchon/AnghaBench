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
struct xenfb_info {int update_wanted; int /*<<< orphan*/  feature_resize; TYPE_1__* xbdev; } ;
struct xenbus_device {int const state; int /*<<< orphan*/  otherend; int /*<<< orphan*/  dev; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
struct TYPE_2__ {int /*<<< orphan*/  otherend; } ;

/* Variables and functions */
#define  XenbusStateClosed 136 
#define  XenbusStateClosing 135 
#define  XenbusStateConnected 134 
#define  XenbusStateInitWait 133 
#define  XenbusStateInitialised 132 
#define  XenbusStateInitialising 131 
#define  XenbusStateReconfigured 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 struct xenfb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*,int const) ; 

__attribute__((used)) static void FUNC4(struct xenbus_device *dev,
				  enum xenbus_state backend_state)
{
	struct xenfb_info *info = FUNC0(&dev->dev);

	switch (backend_state) {
	case XenbusStateInitialising:
	case XenbusStateInitialised:
	case XenbusStateReconfiguring:
	case XenbusStateReconfigured:
	case XenbusStateUnknown:
		break;

	case XenbusStateInitWait:
		FUNC3(dev, XenbusStateConnected);
		break;

	case XenbusStateConnected:
		/*
		 * Work around xenbus race condition: If backend goes
		 * through InitWait to Connected fast enough, we can
		 * get Connected twice here.
		 */
		if (dev->state != XenbusStateConnected)
			/* no InitWait seen yet, fudge it */
			FUNC3(dev, XenbusStateConnected);

		if (FUNC2(info->xbdev->otherend,
					 "request-update", 0))
			info->update_wanted = 1;

		info->feature_resize = FUNC2(dev->otherend,
							"feature-resize", 0);
		break;

	case XenbusStateClosed:
		if (dev->state == XenbusStateClosed)
			break;
		/* fall through - Missed the backend's CLOSING state. */
	case XenbusStateClosing:
		FUNC1(dev);
		break;
	}
}