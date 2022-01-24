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
struct tegra_xusb_padctl {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 

__attribute__((used)) static struct device_node *
FUNC2(struct tegra_xusb_padctl *padctl, const char *name)
{
	struct device_node *pads, *np;

	pads = FUNC0(padctl->dev->of_node, "pads");
	if (!pads)
		return NULL;

	np = FUNC0(pads, name);
	FUNC1(pads);

	return np;
}