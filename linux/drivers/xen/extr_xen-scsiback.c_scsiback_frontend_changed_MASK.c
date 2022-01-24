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
struct xenbus_device {int const state; int /*<<< orphan*/  dev; } ;
struct vscsibk_info {int /*<<< orphan*/  irq; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  VSCSIBACK_OP_ADD_OR_DEL_LUN ; 
 int /*<<< orphan*/  VSCSIBACK_OP_UPDATEDEV_STATE ; 
#define  XenbusStateClosed 134 
#define  XenbusStateClosing 133 
#define  XenbusStateConnected 132 
#define  XenbusStateInitialised 131 
#define  XenbusStateInitialising 130 
 int const XenbusStateReconfigured ; 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 struct vscsibk_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vscsibk_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct vscsibk_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vscsibk_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int const) ; 

__attribute__((used)) static void FUNC8(struct xenbus_device *dev,
					enum xenbus_state frontend_state)
{
	struct vscsibk_info *info = FUNC0(&dev->dev);

	switch (frontend_state) {
	case XenbusStateInitialising:
		break;

	case XenbusStateInitialised:
		if (FUNC4(info))
			break;

		FUNC3(info, VSCSIBACK_OP_ADD_OR_DEL_LUN);
		FUNC7(dev, XenbusStateConnected);
		break;

	case XenbusStateConnected:
		FUNC3(info, VSCSIBACK_OP_UPDATEDEV_STATE);

		if (dev->state == XenbusStateConnected)
			break;

		FUNC7(dev, XenbusStateConnected);
		break;

	case XenbusStateClosing:
		if (info->irq)
			FUNC2(info);

		FUNC7(dev, XenbusStateClosing);
		break;

	case XenbusStateClosed:
		FUNC7(dev, XenbusStateClosed);
		if (FUNC6(dev))
			break;
		/* fall through - if not online */
	case XenbusStateUnknown:
		FUNC1(&dev->dev);
		break;

	case XenbusStateReconfiguring:
		FUNC3(info, VSCSIBACK_OP_ADD_OR_DEL_LUN);
		FUNC7(dev, XenbusStateReconfigured);

		break;

	default:
		FUNC5(dev, -EINVAL, "saw state %d at frontend",
					frontend_state);
		break;
	}
}