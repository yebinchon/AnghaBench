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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct kempld_wdt_stage {int mask; int /*<<< orphan*/  id; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int pld_clock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t PRESCALER_21 ; 
 int /*<<< orphan*/  STAGE_CFG_PRESCALER_MASK ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*) ; 
 int* kempld_prescaler ; 
 int /*<<< orphan*/  FUNC5 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct kempld_device_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kempld_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct kempld_wdt_data *wdt_data,
					struct kempld_wdt_stage *stage,
					unsigned int timeout)
{
	struct kempld_device_data *pld = wdt_data->pld;
	u32 prescaler;
	u64 stage_timeout64;
	u32 stage_timeout;
	u32 remainder;
	u8 stage_cfg;

	prescaler = kempld_prescaler[PRESCALER_21];

	if (!stage)
		return -EINVAL;

	stage_timeout64 = (u64)timeout * pld->pld_clock;
	remainder = FUNC3(stage_timeout64, prescaler);
	if (remainder)
		stage_timeout64++;

	if (stage_timeout64 > stage->mask)
		return -EINVAL;

	stage_timeout = stage_timeout64 & stage->mask;

	FUNC4(pld);
	stage_cfg = FUNC5(pld, FUNC0(stage->id));
	stage_cfg &= ~STAGE_CFG_PRESCALER_MASK;
	stage_cfg |= FUNC2(PRESCALER_21);
	FUNC8(pld, FUNC0(stage->id), stage_cfg);
	FUNC7(pld, FUNC1(stage->id),
			stage_timeout);
	FUNC6(pld);

	return 0;
}