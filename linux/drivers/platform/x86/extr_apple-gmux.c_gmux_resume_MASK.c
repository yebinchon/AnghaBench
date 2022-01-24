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
struct pnp_dev {int dummy; } ;
struct device {int dummy; } ;
struct apple_gmux_data {scalar_t__ power_state; } ;

/* Variables and functions */
 scalar_t__ VGA_SWITCHEROO_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct apple_gmux_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct apple_gmux_data*) ; 
 struct apple_gmux_data* FUNC3 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct pnp_dev *pnp = FUNC4(dev);
	struct apple_gmux_data *gmux_data = FUNC3(pnp);

	FUNC0(gmux_data);
	FUNC2(gmux_data);
	if (gmux_data->power_state == VGA_SWITCHEROO_OFF)
		FUNC1(gmux_data, gmux_data->power_state);
	return 0;
}