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
typedef  int /*<<< orphan*/  u32 ;
struct imx1_pinctrl_soc_info {int /*<<< orphan*/  dev; } ;
struct imx1_pin_group {int npins; TYPE_1__* pins; void** pin_ids; int /*<<< orphan*/  name; } ;
struct imx1_pin {int dummy; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {void* pin_id; void* config; void* mux_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC5(struct device_node *np,
				    struct imx1_pin_group *grp,
				    struct imx1_pinctrl_soc_info *info,
				    u32 index)
{
	int size;
	const __be32 *list;
	int i;

	FUNC1(info->dev, "group(%d): %pOFn\n", index, np);

	/* Initialise group */
	grp->name = np->name;

	/*
	 * the binding format is fsl,pins = <PIN MUX_ID CONFIG>
	 */
	list = FUNC4(np, "fsl,pins", &size);
	/* we do not check return since it's safe node passed down */
	if (!size || size % 12) {
		FUNC2(info->dev, "Not a valid fsl,pins property (%pOFn)\n",
				np);
		return -EINVAL;
	}

	grp->npins = size / 12;
	grp->pins = FUNC3(info->dev,
			grp->npins, sizeof(struct imx1_pin), GFP_KERNEL);
	grp->pin_ids = FUNC3(info->dev,
			grp->npins, sizeof(unsigned int), GFP_KERNEL);

	if (!grp->pins || !grp->pin_ids)
		return -ENOMEM;

	for (i = 0; i < grp->npins; i++) {
		grp->pins[i].pin_id = FUNC0(*list++);
		grp->pins[i].mux_id = FUNC0(*list++);
		grp->pins[i].config = FUNC0(*list++);

		grp->pin_ids[i] = grp->pins[i].pin_id;
	}

	return 0;
}