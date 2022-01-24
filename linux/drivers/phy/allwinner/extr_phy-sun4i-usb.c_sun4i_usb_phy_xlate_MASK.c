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
struct sun4i_usb_phy_data {TYPE_1__* phys; TYPE_2__* cfg; } ;
struct phy {int dummy; } ;
struct of_phandle_args {size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_4__ {size_t num_phys; int missing_phys; } ;
struct TYPE_3__ {struct phy* phy; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_usb_phy_data* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					struct of_phandle_args *args)
{
	struct sun4i_usb_phy_data *data = FUNC2(dev);

	if (args->args[0] >= data->cfg->num_phys)
		return FUNC1(-ENODEV);

	if (data->cfg->missing_phys & FUNC0(args->args[0]))
		return FUNC1(-ENODEV);

	return data->phys[args->args[0]].phy;
}