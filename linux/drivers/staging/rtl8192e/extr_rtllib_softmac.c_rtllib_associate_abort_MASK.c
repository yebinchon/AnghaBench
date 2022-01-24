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
struct TYPE_2__ {int /*<<< orphan*/  no_ass_rs; int /*<<< orphan*/  no_auth_rs; } ;
struct rtllib_device {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  associate_retry_wq; TYPE_1__ softmac_stats; int /*<<< orphan*/  dev; int /*<<< orphan*/  associate_seq; } ;

/* Variables and functions */
 scalar_t__ RTLLIB_ASSOCIATING_AUTHENTICATING ; 
 scalar_t__ RTLLIB_ASSOCIATING_RETRY ; 
 int /*<<< orphan*/  RTLLIB_SOFTMAC_ASSOC_RETRY_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct rtllib_device *ieee)
{
	unsigned long flags;

	FUNC2(&ieee->lock, flags);

	ieee->associate_seq++;

	/* don't scan, and avoid to have the RX path possibily
	 * try again to associate. Even do not react to AUTH or
	 * ASSOC response. Just wait for the retry wq to be scheduled.
	 * Here we will check if there are good nets to associate
	 * with, so we retry or just get back to NO_LINK and scanning
	 */
	if (ieee->state == RTLLIB_ASSOCIATING_AUTHENTICATING) {
		FUNC0(ieee->dev, "Authentication failed\n");
		ieee->softmac_stats.no_auth_rs++;
	} else {
		FUNC0(ieee->dev, "Association failed\n");
		ieee->softmac_stats.no_ass_rs++;
	}

	ieee->state = RTLLIB_ASSOCIATING_RETRY;

	FUNC1(&ieee->associate_retry_wq,
			      RTLLIB_SOFTMAC_ASSOC_RETRY_TIME);

	FUNC3(&ieee->lock, flags);
}