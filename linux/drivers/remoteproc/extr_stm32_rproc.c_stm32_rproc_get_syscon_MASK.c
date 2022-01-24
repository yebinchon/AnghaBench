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
struct stm32_syscon {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; int /*<<< orphan*/ * map; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char const*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np, const char *prop,
				  struct stm32_syscon *syscon)
{
	int err = 0;

	syscon->map = FUNC3(np, prop);
	if (FUNC0(syscon->map)) {
		err = FUNC1(syscon->map);
		syscon->map = NULL;
		goto out;
	}

	err = FUNC2(np, prop, 1, &syscon->reg);
	if (err)
		goto out;

	err = FUNC2(np, prop, 2, &syscon->mask);

out:
	return err;
}