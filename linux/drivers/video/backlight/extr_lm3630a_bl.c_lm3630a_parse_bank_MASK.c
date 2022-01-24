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
typedef  scalar_t__ u32 ;
struct lm3630a_platform_data {char const* ledb_label; char const* leda_label; scalar_t__ leda_max_brt; scalar_t__ ledb_max_brt; scalar_t__ leda_init_brt; scalar_t__ ledb_init_brt; int /*<<< orphan*/  ledb_ctrl; int /*<<< orphan*/  leda_ctrl; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ LM3630A_BANK_0 ; 
 scalar_t__ LM3630A_BANK_1 ; 
 int /*<<< orphan*/  LM3630A_LEDA_ENABLE ; 
 int /*<<< orphan*/  LM3630A_LEDA_ENABLE_LINEAR ; 
 int /*<<< orphan*/  LM3630A_LEDB_ENABLE ; 
 int /*<<< orphan*/  LM3630A_LEDB_ENABLE_LINEAR ; 
 int /*<<< orphan*/  LM3630A_LEDB_ON_A ; 
 scalar_t__ LM3630A_SINK_0 ; 
 scalar_t__ LM3630A_SINK_1 ; 
 int FUNC1 (struct fwnode_handle*,char*) ; 
 int FUNC2 (struct fwnode_handle*,char*,char const**) ; 
 int FUNC3 (struct fwnode_handle*,char*,scalar_t__*) ; 
 int FUNC4 (struct fwnode_handle*,int) ; 

__attribute__((used)) static int FUNC5(struct lm3630a_platform_data *pdata,
			      struct fwnode_handle *node, int *seen_led_sources)
{
	int led_sources, ret;
	const char *label;
	u32 bank, val;
	bool linear;

	ret = FUNC3(node, "reg", &bank);
	if (ret)
		return ret;

	if (bank < LM3630A_BANK_0 || bank > LM3630A_BANK_1)
		return -EINVAL;

	led_sources = FUNC4(node, FUNC0(bank));
	if (led_sources < 0)
		return led_sources;

	if (*seen_led_sources & led_sources)
		return -EINVAL;

	*seen_led_sources |= led_sources;

	linear = FUNC1(node,
					   "ti,linear-mapping-mode");
	if (bank) {
		if (led_sources & FUNC0(LM3630A_SINK_0) ||
		    !(led_sources & FUNC0(LM3630A_SINK_1)))
			return -EINVAL;

		pdata->ledb_ctrl = linear ?
			LM3630A_LEDB_ENABLE_LINEAR :
			LM3630A_LEDB_ENABLE;
	} else {
		if (!(led_sources & FUNC0(LM3630A_SINK_0)))
			return -EINVAL;

		pdata->leda_ctrl = linear ?
			LM3630A_LEDA_ENABLE_LINEAR :
			LM3630A_LEDA_ENABLE;

		if (led_sources & FUNC0(LM3630A_SINK_1))
			pdata->ledb_ctrl = LM3630A_LEDB_ON_A;
	}

	ret = FUNC2(node, "label", &label);
	if (!ret) {
		if (bank)
			pdata->ledb_label = label;
		else
			pdata->leda_label = label;
	}

	ret = FUNC3(node, "default-brightness",
				       &val);
	if (!ret) {
		if (bank)
			pdata->ledb_init_brt = val;
		else
			pdata->leda_init_brt = val;
	}

	ret = FUNC3(node, "max-brightness", &val);
	if (!ret) {
		if (bank)
			pdata->ledb_max_brt = val;
		else
			pdata->leda_max_brt = val;
	}

	return 0;
}