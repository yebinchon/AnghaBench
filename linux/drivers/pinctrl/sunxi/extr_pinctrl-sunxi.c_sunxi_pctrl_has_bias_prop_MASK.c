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
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct device_node *node)
{
	return FUNC0(node, "bias-pull-up", NULL) ||
		FUNC0(node, "bias-pull-down", NULL) ||
		FUNC0(node, "bias-disable", NULL) ||
		FUNC0(node, "allwinner,pull", NULL);
}