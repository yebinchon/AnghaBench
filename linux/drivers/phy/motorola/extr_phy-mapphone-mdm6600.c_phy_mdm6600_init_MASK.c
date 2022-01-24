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
struct phy_mdm6600 {int /*<<< orphan*/  enabled; struct gpio_desc** ctrl_gpios; } ;
struct phy {int dummy; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 size_t PHY_MDM6600_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*,int /*<<< orphan*/ ) ; 
 struct phy_mdm6600* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *x)
{
	struct phy_mdm6600 *ddata = FUNC1(x);
	struct gpio_desc *enable_gpio = ddata->ctrl_gpios[PHY_MDM6600_ENABLE];

	if (!ddata->enabled)
		return -EPROBE_DEFER;

	FUNC0(enable_gpio, 0);

	return 0;
}