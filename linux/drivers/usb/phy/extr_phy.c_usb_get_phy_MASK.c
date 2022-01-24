#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_phy {TYPE_2__* dev; } ;
typedef  enum usb_phy_type { ____Placeholder_usb_phy_type } usb_phy_type ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct usb_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct usb_phy*) ; 
 struct usb_phy* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  phy_list ; 
 int /*<<< orphan*/  phy_lock ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

struct usb_phy *FUNC9(enum usb_phy_type type)
{
	struct usb_phy	*phy = NULL;
	unsigned long	flags;

	FUNC5(&phy_lock, flags);

	phy = FUNC2(&phy_list, type);
	if (FUNC1(phy) || !FUNC7(phy->dev->driver->owner)) {
		FUNC4("PHY: unable to find transceiver of type %s\n",
			FUNC8(type));
		if (!FUNC1(phy))
			phy = FUNC0(-ENODEV);

		goto err0;
	}

	FUNC3(phy->dev);

err0:
	FUNC6(&phy_lock, flags);

	return phy;
}