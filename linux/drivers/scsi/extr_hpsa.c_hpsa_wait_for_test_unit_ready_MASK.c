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
struct ctlr_info {TYPE_1__* pdev; } ;
struct CommandList {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HPSA_MAX_WAIT_INTERVAL_SECS ; 
 int HPSA_TUR_RETRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct ctlr_info*,struct CommandList*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ctlr_info *h,
				struct CommandList *c,
				unsigned char lunaddr[], int reply_queue)
{
	int rc;
	int count = 0;
	int waittime = 1; /* seconds */

	/* Send test unit ready until device ready, or give up. */
	for (count = 0; count < HPSA_TUR_RETRY_LIMIT; count++) {

		/*
		 * Wait for a bit.  do this first, because if we send
		 * the TUR right away, the reset will just abort it.
		 */
		FUNC2(1000 * waittime);

		rc = FUNC1(h, c, lunaddr, reply_queue);
		if (!rc)
			break;

		/* Increase wait time with each try, up to a point. */
		if (waittime < HPSA_MAX_WAIT_INTERVAL_SECS)
			waittime *= 2;

		FUNC0(&h->pdev->dev,
			 "waiting %d secs for device to become ready.\n",
			 waittime);
	}

	return rc;
}