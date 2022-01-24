#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lcs_channel {TYPE_1__* ccwdev; int /*<<< orphan*/  state; scalar_t__ io_idx; scalar_t__ ccws; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DOIO_ALLOW_SUSPEND ; 
 int DOIO_DENY_PREFETCH ; 
 int /*<<< orphan*/  LCS_CH_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC7(struct lcs_channel *channel)
{
	unsigned long flags;
	int rc;

	FUNC0(4, trace,"ssch%s", FUNC3(&channel->ccwdev->dev));
	FUNC5(FUNC4(channel->ccwdev), flags);
	rc = FUNC1(channel->ccwdev,
			      channel->ccws + channel->io_idx, 0, 0,
			      DOIO_DENY_PREFETCH | DOIO_ALLOW_SUSPEND);
	if (rc == 0)
		channel->state = LCS_CH_STATE_RUNNING;
	FUNC6(FUNC4(channel->ccwdev), flags);
	if (rc) {
		FUNC0(4,trace,"essh%s",
			      FUNC3(&channel->ccwdev->dev));
		FUNC2(&channel->ccwdev->dev,
			"Starting an LCS device resulted in an error,"
			" rc=%d!\n", rc);
	}
	return rc;
}