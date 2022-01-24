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
struct xenbus_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend; } ;
struct backend_info {int frontend_state; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  XenbusStateClosed 133 
#define  XenbusStateClosing 132 
#define  XenbusStateConnected 131 
 int const XenbusStateInitWait ; 
#define  XenbusStateInitialised 130 
#define  XenbusStateInitialising 129 
#define  XenbusStateUnknown 128 
 struct backend_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct backend_info*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct xenbus_device *dev,
			     enum xenbus_state frontend_state)
{
	struct backend_info *be = FUNC0(&dev->dev);

	FUNC2("%s -> %s\n", dev->otherend, FUNC6(frontend_state));

	be->frontend_state = frontend_state;

	switch (frontend_state) {
	case XenbusStateInitialising:
		FUNC3(be, XenbusStateInitWait);
		break;

	case XenbusStateInitialised:
		break;

	case XenbusStateConnected:
		FUNC3(be, XenbusStateConnected);
		break;

	case XenbusStateClosing:
		FUNC3(be, XenbusStateClosing);
		break;

	case XenbusStateClosed:
		FUNC3(be, XenbusStateClosed);
		if (FUNC5(dev))
			break;
		/* fall through - if not online */
	case XenbusStateUnknown:
		FUNC3(be, XenbusStateClosed);
		FUNC1(&dev->dev);
		break;

	default:
		FUNC4(dev, -EINVAL, "saw state %d at frontend",
				 frontend_state);
		break;
	}
}