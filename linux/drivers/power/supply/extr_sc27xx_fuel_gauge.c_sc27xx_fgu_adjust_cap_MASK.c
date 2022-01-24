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
struct sc27xx_fgu_data {int init_cap; int /*<<< orphan*/  dev; int /*<<< orphan*/  init_clbcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sc27xx_fgu_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sc27xx_fgu_data *data, int cap)
{
	int ret;

	data->init_cap = cap;
	ret = FUNC1(data, &data->init_clbcnt);
	if (ret)
		FUNC0(data->dev, "failed to get init coulomb counter\n");
}