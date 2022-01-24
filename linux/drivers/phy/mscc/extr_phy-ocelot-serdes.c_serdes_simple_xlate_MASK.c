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
struct serdes_macro {unsigned int idx; unsigned int port; } ;
struct serdes_ctrl {struct phy** phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int args_count; unsigned int* args; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int SERDES_MAX ; 
 struct serdes_ctrl* FUNC2 (struct device*) ; 
 struct serdes_macro* FUNC3 (struct phy*) ; 

__attribute__((used)) static struct phy *FUNC4(struct device *dev,
				       struct of_phandle_args *args)
{
	struct serdes_ctrl *ctrl = FUNC2(dev);
	unsigned int port, idx, i;

	if (args->args_count != 2)
		return FUNC0(-EINVAL);

	port = args->args[0];
	idx = args->args[1];

	for (i = 0; i < SERDES_MAX; i++) {
		struct serdes_macro *macro = FUNC3(ctrl->phys[i]);

		if (idx != macro->idx)
			continue;

		/* SERDES6G(0) is the only SerDes capable of QSGMII */
		if (idx != FUNC1(0) && macro->port >= 0)
			return FUNC0(-EBUSY);

		macro->port = port;
		return ctrl->phys[i];
	}

	return FUNC0(-ENODEV);
}