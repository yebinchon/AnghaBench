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
typedef  int u8 ;
struct TYPE_2__ {int status; scalar_t__ conf; } ;
struct dp_altmode {void* state; TYPE_1__ data; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* DP_STATE_CONFIGURE ; 
 void* DP_STATE_EXIT ; 
 int FUNC2 (int) ; 
 int DP_STATUS_EXIT_DP_MODE ; 
 int DP_STATUS_SWITCH_TO_USB ; 
 int FUNC3 (struct dp_altmode*,int) ; 

__attribute__((used)) static int FUNC4(struct dp_altmode *dp)
{
	bool configured = !!FUNC1(dp->data.conf);
	u8 con = FUNC2(dp->data.status);
	int ret = 0;

	if (configured && (dp->data.status & DP_STATUS_SWITCH_TO_USB)) {
		dp->data.conf = 0;
		dp->state = DP_STATE_CONFIGURE;
	} else if (dp->data.status & DP_STATUS_EXIT_DP_MODE) {
		dp->state = DP_STATE_EXIT;
	} else if (!(con & FUNC0(dp->data.conf))) {
		ret = FUNC3(dp, con);
		if (!ret)
			dp->state = DP_STATE_CONFIGURE;
	}

	return ret;
}