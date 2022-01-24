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
struct orc_host {int /*<<< orphan*/  allocation_lock; scalar_t__ base; } ;

/* Variables and functions */
 int FAILED ; 
 scalar_t__ ORC_HCTRL ; 
 int /*<<< orphan*/  SCSIRST ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct orc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct orc_host*) ; 

__attribute__((used)) static int FUNC5(struct orc_host * host)
{				/* I need Host Control Block Information */
	unsigned long flags;

	FUNC2(&host->allocation_lock, flags);

	FUNC0(host);
	/* reset scsi bus */
	FUNC1(SCSIRST, host->base + ORC_HCTRL);
	/* FIXME: We can spend up to a second with the lock held and
	   interrupts off here */
	if (FUNC4(host) == 0) {
		FUNC3(&host->allocation_lock, flags);
		return FAILED;
	} else {
		FUNC3(&host->allocation_lock, flags);
		return SUCCESS;
	}
}