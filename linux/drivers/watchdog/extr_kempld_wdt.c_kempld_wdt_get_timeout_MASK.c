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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct kempld_wdt_stage {unsigned int mask; int /*<<< orphan*/  id; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int /*<<< orphan*/  pld_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int* kempld_prescaler ; 
 unsigned int FUNC5 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC7(struct kempld_wdt_data *wdt_data,
						struct kempld_wdt_stage *stage)
{
	struct kempld_device_data *pld = wdt_data->pld;
	unsigned int timeout;
	u64 stage_timeout;
	u32 prescaler;
	u32 remainder;
	u8 stage_cfg;

	if (!stage->mask)
		return 0;

	stage_cfg = FUNC6(pld, FUNC0(stage->id));
	stage_timeout = FUNC5(pld, FUNC1(stage->id));
	prescaler = kempld_prescaler[FUNC2(stage_cfg)];

	stage_timeout = (stage_timeout & stage->mask) * prescaler;
	remainder = FUNC4(stage_timeout, pld->pld_clock);
	if (remainder)
		stage_timeout++;

	timeout = stage_timeout;
	FUNC3(timeout != stage_timeout);

	return timeout;
}