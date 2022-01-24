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
struct mtk_pinctrl {int /*<<< orphan*/  dev; int /*<<< orphan*/  pctrl; TYPE_1__* soc; } ;
struct function_desc {int /*<<< orphan*/  name; int /*<<< orphan*/  data; int /*<<< orphan*/  num_group_names; int /*<<< orphan*/  group_names; } ;
struct TYPE_2__ {int nfuncs; struct function_desc* funcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtk_pinctrl *hw)
{
	int i, err;

	for (i = 0; i < hw->soc->nfuncs ; i++) {
		const struct function_desc *func = hw->soc->funcs + i;

		err = FUNC1(hw->pctrl, func->name,
						  func->group_names,
						  func->num_group_names,
						  func->data);
		if (err < 0) {
			FUNC0(hw->dev, "Failed to register function %s\n",
				func->name);
			return err;
		}
	}

	return 0;
}