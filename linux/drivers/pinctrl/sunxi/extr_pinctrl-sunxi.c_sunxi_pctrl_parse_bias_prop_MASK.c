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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PIN_CONFIG_BIAS_DISABLE ; 
 int PIN_CONFIG_BIAS_PULL_DOWN ; 
 int PIN_CONFIG_BIAS_PULL_UP ; 
#define  SUN4I_PINCTRL_NO_PULL 130 
#define  SUN4I_PINCTRL_PULL_DOWN 129 
#define  SUN4I_PINCTRL_PULL_UP 128 
 scalar_t__ FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC2(struct device_node *node)
{
	u32 val;

	/* Try the new style binding */
	if (FUNC0(node, "bias-pull-up", NULL))
		return PIN_CONFIG_BIAS_PULL_UP;

	if (FUNC0(node, "bias-pull-down", NULL))
		return PIN_CONFIG_BIAS_PULL_DOWN;

	if (FUNC0(node, "bias-disable", NULL))
		return PIN_CONFIG_BIAS_DISABLE;

	/* And fall back to the old binding */
	if (FUNC1(node, "allwinner,pull", &val))
		return -EINVAL;

	switch (val) {
	case SUN4I_PINCTRL_NO_PULL:
		return PIN_CONFIG_BIAS_DISABLE;
	case SUN4I_PINCTRL_PULL_UP:
		return PIN_CONFIG_BIAS_PULL_UP;
	case SUN4I_PINCTRL_PULL_DOWN:
		return PIN_CONFIG_BIAS_PULL_DOWN;
	}

	return -EINVAL;
}