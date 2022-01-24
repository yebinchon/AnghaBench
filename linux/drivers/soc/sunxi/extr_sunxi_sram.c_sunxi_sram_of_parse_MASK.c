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
typedef  scalar_t__ u8 ;
struct sunxi_sram_func {scalar_t__ val; unsigned int reg_val; scalar_t__ func; } ;
typedef  struct sunxi_sram_data {struct sunxi_sram_func* func; } const sunxi_sram_data ;
struct of_phandle_args {scalar_t__* args; int /*<<< orphan*/  np; } ;
struct of_device_id {struct sunxi_sram_data const* data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct sunxi_sram_data const* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  sunxi_sram_dt_ids ; 

__attribute__((used)) static const struct sunxi_sram_data *FUNC5(struct device_node *node,
							 unsigned int *reg_value)
{
	const struct of_device_id *match;
	const struct sunxi_sram_data *data;
	struct sunxi_sram_func *func;
	struct of_phandle_args args;
	u8 val;
	int ret;

	ret = FUNC4(node, "allwinner,sram", 1, 0,
					       &args);
	if (ret)
		return FUNC0(ret);

	if (!FUNC1(args.np)) {
		ret = -EBUSY;
		goto err;
	}

	val = args.args[0];

	match = FUNC2(sunxi_sram_dt_ids, args.np);
	if (!match) {
		ret = -EINVAL;
		goto err;
	}

	data = match->data;
	if (!data) {
		ret = -EINVAL;
		goto err;
	};

	for (func = data->func; func->func; func++) {
		if (val == func->val) {
			if (reg_value)
				*reg_value = func->reg_val;

			break;
		}
	}

	if (!func->func) {
		ret = -EINVAL;
		goto err;
	}

	FUNC3(args.np);
	return match->data;

err:
	FUNC3(args.np);
	return FUNC0(ret);
}