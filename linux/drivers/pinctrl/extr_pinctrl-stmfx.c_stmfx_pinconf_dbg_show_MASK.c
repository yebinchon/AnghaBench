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
struct stmfx_pinctrl {int /*<<< orphan*/  gpio_chip; } ;
struct seq_file {int dummy; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct stmfx_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 struct pinctrl_gpio_range* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (struct stmfx_pinctrl*,unsigned int) ; 
 int FUNC7 (struct stmfx_pinctrl*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct pinctrl_dev *pctldev,
				   struct seq_file *s, unsigned int offset)
{
	struct stmfx_pinctrl *pctl = FUNC0(pctldev);
	struct pinctrl_gpio_range *range;
	int dir, type, pupd, val;

	range = FUNC1(pctldev, offset);
	if (!range)
		return;

	dir = FUNC5(&pctl->gpio_chip, offset);
	if (dir < 0)
		return;
	type = FUNC7(pctl, offset);
	if (type < 0)
		return;
	pupd = FUNC6(pctl, offset);
	if (pupd < 0)
		return;
	val = FUNC4(&pctl->gpio_chip, offset);
	if (val < 0)
		return;

	if (!dir) {
		FUNC2(s, "output %s ", val ? "high" : "low");
		if (type)
			FUNC2(s, "open drain %s internal pull-up ",
				   pupd ? "with" : "without");
		else
			FUNC3(s, "push pull no pull ");
	} else {
		FUNC2(s, "input %s ", val ? "high" : "low");
		if (type)
			FUNC2(s, "with internal pull-%s ",
				   pupd ? "up" : "down");
		else
			FUNC2(s, "%s ", pupd ? "floating" : "analog");
	}
}