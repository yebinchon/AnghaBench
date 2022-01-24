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
struct imx_pm_domain {int /*<<< orphan*/ * supply; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,struct imx_pm_domain*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct imx_pm_domain *domain)
{
	/* try to get the domain supply regulator */
	domain->supply = FUNC2(dev, "power");
	if (FUNC0(domain->supply)) {
		if (FUNC1(domain->supply) == -ENODEV)
			domain->supply = NULL;
		else
			return FUNC1(domain->supply);
	}

	/* try to get all clocks needed for reset propagation */
	return FUNC3(dev, domain);
}