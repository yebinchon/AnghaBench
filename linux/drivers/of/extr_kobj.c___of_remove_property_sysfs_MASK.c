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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,struct property*) ; 
 scalar_t__ of_kset ; 
 scalar_t__ FUNC1 (struct device_node*) ; 

void FUNC2(struct device_node *np, struct property *prop)
{
	/* at early boot, bail here and defer setup to of_init() */
	if (of_kset && FUNC1(np))
		FUNC0(np, prop);
}