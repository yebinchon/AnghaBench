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
struct reset_control {int array; } ;
struct reset_control_array {int num_rstcs; struct reset_control** rstc; struct reset_control base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct reset_control* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 struct reset_control* FUNC2 (struct device_node*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct reset_control_array*) ; 
 struct reset_control_array* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  reset_list_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct reset_control_array*,struct reset_control*,int) ; 

struct reset_control *
FUNC10(struct device_node *np, bool shared, bool optional,
			   bool acquired)
{
	struct reset_control_array *resets;
	struct reset_control *rstc;
	int num, i;

	num = FUNC8(np);
	if (num < 0)
		return optional ? NULL : FUNC0(num);

	resets = FUNC5(FUNC9(resets, rstc, num), GFP_KERNEL);
	if (!resets)
		return FUNC0(-ENOMEM);

	for (i = 0; i < num; i++) {
		rstc = FUNC2(np, NULL, i, shared, optional,
					      acquired);
		if (FUNC1(rstc))
			goto err_rst;
		resets->rstc[i] = rstc;
	}
	resets->num_rstcs = num;
	resets->base.array = true;

	return &resets->base;

err_rst:
	FUNC6(&reset_list_mutex);
	while (--i >= 0)
		FUNC3(resets->rstc[i]);
	FUNC7(&reset_list_mutex);

	FUNC4(resets);

	return rstc;
}