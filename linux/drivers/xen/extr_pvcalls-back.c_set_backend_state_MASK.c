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
struct xenbus_device {int state; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
struct TYPE_2__ {int /*<<< orphan*/  frontends_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  XenbusStateClosed 132 
#define  XenbusStateClosing 131 
#define  XenbusStateConnected 130 
#define  XenbusStateInitWait 129 
#define  XenbusStateInitialised 128 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pvcalls_back_global ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,int const) ; 

__attribute__((used)) static void FUNC6(struct xenbus_device *dev,
			      enum xenbus_state state)
{
	while (dev->state != state) {
		switch (dev->state) {
		case XenbusStateClosed:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateConnected:
				FUNC5(dev, XenbusStateInitWait);
				break;
			case XenbusStateClosing:
				FUNC5(dev, XenbusStateClosing);
				break;
			default:
				FUNC0(1);
			}
			break;
		case XenbusStateInitWait:
		case XenbusStateInitialised:
			switch (state) {
			case XenbusStateConnected:
				FUNC1(dev);
				FUNC5(dev, XenbusStateConnected);
				break;
			case XenbusStateClosing:
			case XenbusStateClosed:
				FUNC5(dev, XenbusStateClosing);
				break;
			default:
				FUNC0(1);
			}
			break;
		case XenbusStateConnected:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateClosing:
			case XenbusStateClosed:
				FUNC3(&pvcalls_back_global.frontends_lock);
				FUNC2(dev);
				FUNC4(&pvcalls_back_global.frontends_lock);
				FUNC5(dev, XenbusStateClosing);
				break;
			default:
				FUNC0(1);
			}
			break;
		case XenbusStateClosing:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateConnected:
			case XenbusStateClosed:
				FUNC5(dev, XenbusStateClosed);
				break;
			default:
				FUNC0(1);
			}
			break;
		default:
			FUNC0(1);
		}
	}
}