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
struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MX1_PUEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx1_pinctrl*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 struct imx1_pinctrl* FUNC3 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
			     unsigned pin_id, unsigned long *configs,
			     unsigned num_configs)
{
	struct imx1_pinctrl *ipctl = FUNC3(pctldev);
	int i;

	for (i = 0; i != num_configs; ++i) {
		FUNC1(ipctl, pin_id, configs[i] & 0x01, MX1_PUEN);

		FUNC0(ipctl->dev, "pinconf set pullup pin %s\n",
			FUNC2(pctldev, pin_id)->name);
	}

	return 0;
}