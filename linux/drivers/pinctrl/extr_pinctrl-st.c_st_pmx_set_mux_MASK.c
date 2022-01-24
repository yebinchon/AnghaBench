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
struct st_pio_control {int dummy; } ;
struct st_pinctrl {TYPE_1__* groups; } ;
struct st_pinconf {int /*<<< orphan*/  altfunc; int /*<<< orphan*/  pin; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int npins; struct st_pinconf* pin_conf; } ;

/* Variables and functions */
 struct st_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 struct st_pio_control* FUNC1 (struct pinctrl_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_pio_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev, unsigned fselector,
			unsigned group)
{
	struct st_pinctrl *info = FUNC0(pctldev);
	struct st_pinconf *conf = info->groups[group].pin_conf;
	struct st_pio_control *pc;
	int i;

	for (i = 0; i < info->groups[group].npins; i++) {
		pc = FUNC1(pctldev, conf[i].pin);
		FUNC2(pc, conf[i].pin, conf[i].altfunc);
	}

	return 0;
}