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
struct megasas_instance {int bar; int /*<<< orphan*/  pdev; int /*<<< orphan*/  reg_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct megasas_instance *instance)
{
	FUNC3(instance);
	FUNC1(instance);
	FUNC2(instance);

	FUNC0(instance->reg_set);

	FUNC4(instance->pdev, 1<<instance->bar);
}