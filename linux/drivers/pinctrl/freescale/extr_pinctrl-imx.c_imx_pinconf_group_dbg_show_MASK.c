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
struct seq_file {int dummy; } ;
struct pinctrl_dev {unsigned int num_groups; } ;
struct imx_pin {int /*<<< orphan*/  pin; } ;
struct group_desc {int num_pins; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (struct pinctrl_dev*,int /*<<< orphan*/ ,unsigned long*) ; 
 char* FUNC1 (struct pinctrl_dev*,int /*<<< orphan*/ ) ; 
 struct group_desc* FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctldev,
					 struct seq_file *s, unsigned group)
{
	struct group_desc *grp;
	unsigned long config;
	const char *name;
	int i, ret;

	if (group >= pctldev->num_groups)
		return;

	FUNC4(s, "\n");
	grp = FUNC2(pctldev, group);
	if (!grp)
		return;

	for (i = 0; i < grp->num_pins; i++) {
		struct imx_pin *pin = &((struct imx_pin *)(grp->data))[i];

		name = FUNC1(pctldev, pin->pin);
		ret = FUNC0(pctldev, pin->pin, &config);
		if (ret)
			return;
		FUNC3(s, "  %s: 0x%lx\n", name, config);
	}
}