#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  conf; } ;
struct dp_altmode {TYPE_3__ data; TYPE_1__* alt; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_CMD_CONFIGURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dp_altmode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEC_STATE_SAFE ; 
 int /*<<< orphan*/  TYPEC_STATE_USB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dp_altmode*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct dp_altmode *dp, u32 conf)
{
	u32 header = FUNC1(dp, DP_CMD_CONFIGURE);
	int ret;

	ret = FUNC4(dp->alt, TYPEC_STATE_SAFE, &dp->data);
	if (ret) {
		FUNC2(&dp->alt->dev,
			"unable to put to connector to safe mode\n");
		return ret;
	}

	ret = FUNC5(dp->alt, header, &conf, 2);
	if (ret) {
		if (FUNC0(dp->data.conf))
			FUNC3(dp);
		else
			FUNC4(dp->alt, TYPEC_STATE_USB,
					     &dp->data);
	}

	return ret;
}