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
struct xen_pcibk_device {int dummy; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
#define  XenbusStateClosed 133 
#define  XenbusStateClosing 132 
#define  XenbusStateConnected 131 
#define  XenbusStateInitialised 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct xen_pcibk_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int const) ; 

__attribute__((used)) static void FUNC8(struct xenbus_device *xdev,
				     enum xenbus_state fe_state)
{
	struct xen_pcibk_device *pdev = FUNC1(&xdev->dev);

	FUNC0(&xdev->dev, "fe state changed %d\n", fe_state);

	switch (fe_state) {
	case XenbusStateInitialised:
		FUNC3(pdev);
		break;

	case XenbusStateReconfiguring:
		FUNC5(pdev);
		break;

	case XenbusStateConnected:
		/* pcifront switched its state from reconfiguring to connected.
		 * Then switch to connected state.
		 */
		FUNC7(xdev, XenbusStateConnected);
		break;

	case XenbusStateClosing:
		FUNC4(pdev);
		FUNC7(xdev, XenbusStateClosing);
		break;

	case XenbusStateClosed:
		FUNC4(pdev);
		FUNC7(xdev, XenbusStateClosed);
		if (FUNC6(xdev))
			break;
		/* fall through - if not online */
	case XenbusStateUnknown:
		FUNC0(&xdev->dev, "frontend is gone! unregister device\n");
		FUNC2(&xdev->dev);
		break;

	default:
		break;
	}
}