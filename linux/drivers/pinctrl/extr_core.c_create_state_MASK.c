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
struct pinctrl_state {char const* name; int /*<<< orphan*/  node; int /*<<< orphan*/  settings; } ;
struct pinctrl {int /*<<< orphan*/  states; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pinctrl_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pinctrl_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pinctrl_state *FUNC4(struct pinctrl *p,
					  const char *name)
{
	struct pinctrl_state *state;

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return FUNC0(-ENOMEM);

	state->name = name;
	FUNC1(&state->settings);

	FUNC3(&state->node, &p->states);

	return state;
}