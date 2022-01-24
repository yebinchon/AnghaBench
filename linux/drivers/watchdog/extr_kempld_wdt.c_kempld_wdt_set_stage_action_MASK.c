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
typedef  int u8 ;
struct kempld_wdt_stage {int /*<<< orphan*/  id; int /*<<< orphan*/  mask; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int ACTION_RESET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int STAGE_CFG_ACTION_MASK ; 
 int STAGE_CFG_ASSERT ; 
 int /*<<< orphan*/  FUNC1 (struct kempld_device_data*) ; 
 int FUNC2 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct kempld_wdt_data *wdt_data,
					struct kempld_wdt_stage *stage,
					u8 action)
{
	struct kempld_device_data *pld = wdt_data->pld;
	u8 stage_cfg;

	if (!stage || !stage->mask)
		return -EINVAL;

	FUNC1(pld);
	stage_cfg = FUNC2(pld, FUNC0(stage->id));
	stage_cfg &= ~STAGE_CFG_ACTION_MASK;
	stage_cfg |= (action & STAGE_CFG_ACTION_MASK);

	if (action == ACTION_RESET)
		stage_cfg |= STAGE_CFG_ASSERT;
	else
		stage_cfg &= ~STAGE_CFG_ASSERT;

	FUNC4(pld, FUNC0(stage->id), stage_cfg);
	FUNC3(pld);

	return 0;
}