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
struct pinctrl_state {int dummy; } ;
struct pinctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct pinctrl_state* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pinctrl_state* FUNC1 (struct pinctrl*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct pinctrl_state* FUNC3 (struct pinctrl*,char const*) ; 
 scalar_t__ pinctrl_dummy_state ; 

struct pinctrl_state *FUNC4(struct pinctrl *p,
						 const char *name)
{
	struct pinctrl_state *state;

	state = FUNC3(p, name);
	if (!state) {
		if (pinctrl_dummy_state) {
			/* create dummy state */
			FUNC2(p->dev, "using pinctrl dummy state (%s)\n",
				name);
			state = FUNC1(p, name);
		} else
			state = FUNC0(-ENODEV);
	}

	return state;
}