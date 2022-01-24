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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pinctrl_state {int dummy; } ;
typedef  struct pinctrl_state pinctrl ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 struct pinctrl_state* FUNC1 (int /*<<< orphan*/ *) ; 
 struct pinctrl_state* FUNC2 (struct pinctrl_state*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pinctrl_state*,struct pinctrl_state*) ; 

void FUNC4(struct platform_device *pdev)
{
	struct pinctrl *pinctl;
	struct pinctrl_state *state;

	pinctl = FUNC1(&pdev->dev);
	if (FUNC0(pinctl))
		return;
	state = FUNC2(pinctl, "shutdown");
	if (FUNC0(state))
		return;
	FUNC3(pinctl, state);
}