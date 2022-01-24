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
struct usb_phy_roothub {int /*<<< orphan*/  list; struct phy* phy; } ;
struct phy {int dummy; } ;
struct list_head {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy*) ; 
 struct usb_phy_roothub* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC4 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, int index,
				   struct list_head *list)
{
	struct usb_phy_roothub *roothub_entry;
	struct phy *phy;

	phy = FUNC4(dev, dev->of_node, index);
	if (FUNC1(phy)) {
		if (FUNC2(phy) == -ENODEV)
			return 0;
		else
			return FUNC2(phy);
	}

	roothub_entry = FUNC3(dev, sizeof(*roothub_entry), GFP_KERNEL);
	if (!roothub_entry)
		return -ENOMEM;

	FUNC0(&roothub_entry->list);

	roothub_entry->phy = phy;

	FUNC5(&roothub_entry->list, list);

	return 0;
}