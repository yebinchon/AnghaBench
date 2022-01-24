#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct property {TYPE_2__ attr; } ;
struct device_node {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SYSFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC3(struct device_node *np, struct property *prop)
{
	if (!FUNC0(CONFIG_SYSFS))
		return;

	FUNC2(&np->kobj, &prop->attr);
	FUNC1(prop->attr.attr.name);
}