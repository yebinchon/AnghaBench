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
struct phy {int dummy; } ;
struct of_phandle_args {int* args; } ;
struct device {int dummy; } ;
struct da8xx_usb_phy {struct phy* usb11_phy; struct phy* usb20_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 struct da8xx_usb_phy* FUNC1 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC2(struct device *dev,
					 struct of_phandle_args *args)
{
	struct da8xx_usb_phy *d_phy = FUNC1(dev);

	if (!d_phy)
		return FUNC0(-ENODEV);

	switch (args->args[0]) {
	case 0:
		return d_phy->usb20_phy;
	case 1:
		return d_phy->usb11_phy;
	default:
		return FUNC0(-EINVAL);
	}
}