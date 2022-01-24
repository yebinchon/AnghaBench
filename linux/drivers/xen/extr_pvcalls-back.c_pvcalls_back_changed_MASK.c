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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*) ; 

__attribute__((used)) static void FUNC4(struct xenbus_device *dev,
				 enum xenbus_state frontend_state)
{
	switch (frontend_state) {
	case XenbusStateInitialising:
		FUNC1(dev, XenbusStateInitWait);
		break;

	case XenbusStateInitialised:
	case XenbusStateConnected:
		FUNC1(dev, XenbusStateConnected);
		break;

	case XenbusStateClosing:
		FUNC1(dev, XenbusStateClosing);
		break;

	case XenbusStateClosed:
		FUNC1(dev, XenbusStateClosed);
		if (FUNC3(dev))
			break;
		FUNC0(&dev->dev);
		break;
	case XenbusStateUnknown:
		FUNC1(dev, XenbusStateClosed);
		FUNC0(&dev->dev);
		break;

	default:
		FUNC2(dev, -EINVAL, "saw state %d at frontend",
				 frontend_state);
		break;
	}
}