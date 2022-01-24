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
struct platform_device {int /*<<< orphan*/ * resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  tables; } ;

/* Variables and functions */
 int ENVCTRL_MAX_CPU ; 
 int /*<<< orphan*/  envctrl_dev ; 
 int /*<<< orphan*/  i2c ; 
 TYPE_1__* i2c_childlist ; 
 int /*<<< orphan*/  kenvctrld_task ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *op)
{
	int index;

	FUNC1(kenvctrld_task);

	FUNC3(&op->resource[0], i2c, 0x2);
	FUNC2(&envctrl_dev);

	for (index = 0; index < ENVCTRL_MAX_CPU * 2; index++)
		FUNC0(i2c_childlist[index].tables);

	return 0;
}