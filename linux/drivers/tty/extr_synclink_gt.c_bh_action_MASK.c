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
struct slgt_info {int pending_bh; int bh_running; int bh_requested; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BH_RECEIVE ; 
 int BH_STATUS ; 
 int BH_TRANSMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct slgt_info *info)
{
	unsigned long flags;
	int rc;

	FUNC0(&info->lock,flags);

	if (info->pending_bh & BH_RECEIVE) {
		info->pending_bh &= ~BH_RECEIVE;
		rc = BH_RECEIVE;
	} else if (info->pending_bh & BH_TRANSMIT) {
		info->pending_bh &= ~BH_TRANSMIT;
		rc = BH_TRANSMIT;
	} else if (info->pending_bh & BH_STATUS) {
		info->pending_bh &= ~BH_STATUS;
		rc = BH_STATUS;
	} else {
		/* Mark BH routine as complete */
		info->bh_running = false;
		info->bh_requested = false;
		rc = 0;
	}

	FUNC1(&info->lock,flags);

	return rc;
}