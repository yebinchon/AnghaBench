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
typedef  int u32 ;
struct property {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mxs_pinctrl_data {TYPE_1__* soc; } ;
struct mxs_group {char* name; int npins; int /*<<< orphan*/ * pins; int /*<<< orphan*/ * muxsel; } ;
struct device_node {char* name; } ;
struct TYPE_2__ {struct mxs_group* groups; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SUFFIX_LEN ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct property* FUNC4 (struct device_node*,char const*,int*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char const*,int /*<<< orphan*/ *,int) ; 
 struct mxs_pinctrl_data* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev,
				   struct device_node *np, int idx,
				   const char **out_name)
{
	struct mxs_pinctrl_data *d = FUNC7(pdev);
	struct mxs_group *g = &d->soc->groups[idx];
	struct property *prop;
	const char *propname = "fsl,pinmux-ids";
	char *group;
	int length = FUNC9(np->name) + SUFFIX_LEN;
	u32 val, i;

	group = FUNC3(&pdev->dev, length, GFP_KERNEL);
	if (!group)
		return -ENOMEM;
	if (FUNC5(np, "reg", &val))
		FUNC8(group, length, "%s", np->name);
	else
		FUNC8(group, length, "%s.%d", np->name, val);
	g->name = group;

	prop = FUNC4(np, propname, &length);
	if (!prop)
		return -EINVAL;
	g->npins = length / sizeof(u32);

	g->pins = FUNC2(&pdev->dev, g->npins, sizeof(*g->pins),
			       GFP_KERNEL);
	if (!g->pins)
		return -ENOMEM;

	g->muxsel = FUNC2(&pdev->dev, g->npins, sizeof(*g->muxsel),
				 GFP_KERNEL);
	if (!g->muxsel)
		return -ENOMEM;

	FUNC6(np, propname, g->pins, g->npins);
	for (i = 0; i < g->npins; i++) {
		g->muxsel[i] = FUNC0(g->pins[i]);
		g->pins[i] = FUNC1(g->pins[i]);
	}

	if (out_name)
		*out_name = g->name;

	return 0;
}