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
struct usb_phy {int dummy; } ;
struct device {int dummy; } ;
typedef  enum usb_phy_type { ____Placeholder_usb_phy_type } usb_phy_type ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct usb_phy*) ; 
 int /*<<< orphan*/  devm_usb_phy_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct usb_phy**) ; 
 struct usb_phy** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_phy**) ; 
 struct usb_phy* FUNC5 (int) ; 

struct usb_phy *FUNC6(struct device *dev, enum usb_phy_type type)
{
	struct usb_phy **ptr, *phy;

	ptr = FUNC3(devm_usb_phy_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	phy = FUNC5(type);
	if (!FUNC1(phy)) {
		*ptr = phy;
		FUNC2(dev, ptr);
	} else
		FUNC4(ptr);

	return phy;
}