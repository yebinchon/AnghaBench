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
typedef  int u32 ;
struct platform_device {int dummy; } ;
struct llcc_slice_desc {int /*<<< orphan*/  slice_id; } ;
struct llcc_slice_config {int cache_mode; int probe_target_ways; int fixed_size; int priority; int res_ways; int bonus_ways; int /*<<< orphan*/  slice_id; scalar_t__ activate_on_init; int /*<<< orphan*/  max_cap; } ;
struct TYPE_2__ {int cfg_size; int num_banks; int /*<<< orphan*/  bcast_regmap; struct llcc_slice_config* cfg; } ;

/* Variables and functions */
 int ATTR0_BONUS_WAYS_SHIFT ; 
 int ATTR0_RES_WAYS_MASK ; 
 int ATTR1_FIXED_SIZE_SHIFT ; 
 int ATTR1_MAX_CAP_SHIFT ; 
 int ATTR1_PRIORITY_SHIFT ; 
 int ATTR1_PROBE_TARGET_WAYS_SHIFT ; 
 int CACHE_LINE_SIZE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* drv_data ; 
 int FUNC3 (struct llcc_slice_desc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int i;
	u32 attr1_cfg;
	u32 attr0_cfg;
	u32 attr1_val;
	u32 attr0_val;
	u32 max_cap_cacheline;
	u32 sz;
	int ret = 0;
	const struct llcc_slice_config *llcc_table;
	struct llcc_slice_desc desc;

	sz = drv_data->cfg_size;
	llcc_table = drv_data->cfg;

	for (i = 0; i < sz; i++) {
		attr1_cfg = FUNC1(llcc_table[i].slice_id);
		attr0_cfg = FUNC0(llcc_table[i].slice_id);

		attr1_val = llcc_table[i].cache_mode;
		attr1_val |= llcc_table[i].probe_target_ways <<
				ATTR1_PROBE_TARGET_WAYS_SHIFT;
		attr1_val |= llcc_table[i].fixed_size <<
				ATTR1_FIXED_SIZE_SHIFT;
		attr1_val |= llcc_table[i].priority <<
				ATTR1_PRIORITY_SHIFT;

		max_cap_cacheline = FUNC2(llcc_table[i].max_cap);

		/* LLCC instances can vary for each target.
		 * The SW writes to broadcast register which gets propagated
		 * to each llcc instace (llcc0,.. llccN).
		 * Since the size of the memory is divided equally amongst the
		 * llcc instances, we need to configure the max cap accordingly.
		 */
		max_cap_cacheline = max_cap_cacheline / drv_data->num_banks;
		max_cap_cacheline >>= CACHE_LINE_SIZE_SHIFT;
		attr1_val |= max_cap_cacheline << ATTR1_MAX_CAP_SHIFT;

		attr0_val = llcc_table[i].res_ways & ATTR0_RES_WAYS_MASK;
		attr0_val |= llcc_table[i].bonus_ways << ATTR0_BONUS_WAYS_SHIFT;

		ret = FUNC4(drv_data->bcast_regmap, attr1_cfg,
					attr1_val);
		if (ret)
			return ret;
		ret = FUNC4(drv_data->bcast_regmap, attr0_cfg,
					attr0_val);
		if (ret)
			return ret;
		if (llcc_table[i].activate_on_init) {
			desc.slice_id = llcc_table[i].slice_id;
			ret = FUNC3(&desc);
		}
	}
	return ret;
}