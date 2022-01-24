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
struct pinctrl_dev {int dummy; } ;
struct pin_desc {int gpio_owner; } ;
struct ltq_pinmux_info {int /*<<< orphan*/ * membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LTQ_PINCONF_PARAM_DRIVE_CURRENT ; 
 int /*<<< orphan*/  LTQ_PINCONF_PARAM_PULL ; 
 int /*<<< orphan*/  LTQ_PINCONF_PARAM_SLEW_RATE ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pin_desc* FUNC7 (struct pinctrl_dev*,unsigned int) ; 
 struct ltq_pinmux_info* FUNC8 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC10(struct pinctrl_dev *pctrldev,
			struct seq_file *s, unsigned offset)
{
	unsigned long config;
	struct pin_desc *desc;

	struct ltq_pinmux_info *info = FUNC8(pctrldev);
	int port = FUNC3(offset);

	FUNC9(s, " (port %d) mux %d -- ", port,
		FUNC6(info->membase[port], FUNC0(FUNC4(offset))));

	config = FUNC1(LTQ_PINCONF_PARAM_PULL, 0);
	if (!FUNC5(pctrldev, offset, &config))
		FUNC9(s, "pull %d ",
			(int)FUNC2(config));

	config = FUNC1(LTQ_PINCONF_PARAM_DRIVE_CURRENT, 0);
	if (!FUNC5(pctrldev, offset, &config))
		FUNC9(s, "drive-current %d ",
			(int)FUNC2(config));

	config = FUNC1(LTQ_PINCONF_PARAM_SLEW_RATE, 0);
	if (!FUNC5(pctrldev, offset, &config))
		FUNC9(s, "slew-rate %d ",
			(int)FUNC2(config));

	desc = FUNC7(pctrldev, offset);
	if (desc) {
		if (desc->gpio_owner)
			FUNC9(s, " owner: %s", desc->gpio_owner);
	} else {
		FUNC9(s, " not registered");
	}
}