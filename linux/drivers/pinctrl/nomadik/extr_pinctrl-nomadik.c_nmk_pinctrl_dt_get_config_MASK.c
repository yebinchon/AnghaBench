#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  property; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* nmk_cfg_params ; 
 scalar_t__ FUNC1 (int,int,unsigned long*) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC3(struct device_node *np,
		unsigned long *configs)
{
	bool has_config = 0;
	unsigned long cfg = 0;
	int i, val, ret;

	for (i = 0; i < FUNC0(nmk_cfg_params); i++) {
		ret = FUNC2(np,
				nmk_cfg_params[i].property, &val);
		if (ret != -EINVAL) {
			if (FUNC1(i, val, &cfg) == 0) {
				*configs |= cfg;
				has_config = 1;
			}
		}
	}

	return has_config;
}