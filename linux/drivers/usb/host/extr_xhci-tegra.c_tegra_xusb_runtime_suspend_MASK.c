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
struct tegra_xusb {int /*<<< orphan*/  supplies; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 struct tegra_xusb* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct tegra_xusb *tegra = FUNC0(dev);

	FUNC3(tegra);
	FUNC1(tegra->soc->num_supplies, tegra->supplies);
	FUNC2(tegra);

	return 0;
}