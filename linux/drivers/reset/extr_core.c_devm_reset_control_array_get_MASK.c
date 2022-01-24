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
struct reset_control {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct reset_control* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  devm_reset_control_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct reset_control**) ; 
 struct reset_control** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct reset_control**) ; 
 struct reset_control* FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

struct reset_control *
FUNC6(struct device *dev, bool shared, bool optional)
{
	struct reset_control **devres;
	struct reset_control *rstc;

	devres = FUNC3(devm_reset_control_release, sizeof(*devres),
			      GFP_KERNEL);
	if (!devres)
		return FUNC0(-ENOMEM);

	rstc = FUNC5(dev->of_node, shared, optional, true);
	if (FUNC1(rstc)) {
		FUNC4(devres);
		return rstc;
	}

	*devres = rstc;
	FUNC2(dev, devres);

	return rstc;
}