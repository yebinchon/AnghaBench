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
struct tcs_group {int offset; int num_tcs; int /*<<< orphan*/  lock; int /*<<< orphan*/  slots; } ;
struct rsc_drv {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MAX_TCS_SLOTS ; 
 int /*<<< orphan*/  RSC_DRV_CMD_ENABLE ; 
 int /*<<< orphan*/  RSC_DRV_CMD_WAIT_FOR_CMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcs_group* FUNC2 (struct rsc_drv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rsc_drv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rsc_drv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rsc_drv *drv, int type)
{
	int m;
	struct tcs_group *tcs;

	tcs = FUNC2(drv, type);

	FUNC3(&tcs->lock);
	if (FUNC0(tcs->slots, MAX_TCS_SLOTS)) {
		FUNC4(&tcs->lock);
		return 0;
	}

	for (m = tcs->offset; m < tcs->offset + tcs->num_tcs; m++) {
		if (!FUNC5(drv, m)) {
			FUNC4(&tcs->lock);
			return -EAGAIN;
		}
		FUNC6(drv, RSC_DRV_CMD_ENABLE, m, 0);
		FUNC6(drv, RSC_DRV_CMD_WAIT_FOR_CMPL, m, 0);
	}
	FUNC1(tcs->slots, MAX_TCS_SLOTS);
	FUNC4(&tcs->lock);

	return 0;
}