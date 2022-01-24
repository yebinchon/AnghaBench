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
struct MPT3SAS_ADAPTER {scalar_t__ pending_io_count; int /*<<< orphan*/  reset_wq; int /*<<< orphan*/  shost; scalar_t__ shost_recovery; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct MPT3SAS_ADAPTER *ioc)
{
	/*
	 * See _wait_for_commands_to_complete() call with regards to this code.
	 */
	if (ioc->shost_recovery && ioc->pending_io_count) {
		ioc->pending_io_count = FUNC0(ioc->shost);
		if (ioc->pending_io_count == 0)
			FUNC1(&ioc->reset_wq);
	}
}