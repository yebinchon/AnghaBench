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
struct tegra_xusb_padctl {struct phy** phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {unsigned int* args; scalar_t__ args_count; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct phy**) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct phy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_padctl* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					   struct of_phandle_args *args)
{
	struct tegra_xusb_padctl *padctl = FUNC2(dev);
	unsigned int index = args->args[0];

	if (args->args_count <= 0)
		return FUNC1(-EINVAL);

	if (index >= FUNC0(padctl->phys))
		return FUNC1(-EINVAL);

	return padctl->phys[index];
}