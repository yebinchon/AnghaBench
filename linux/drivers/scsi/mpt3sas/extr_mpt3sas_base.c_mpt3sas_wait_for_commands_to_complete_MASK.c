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
typedef  int u32 ;
struct MPT3SAS_ADAPTER {scalar_t__ pending_io_count; int /*<<< orphan*/  reset_wq; int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 int HZ ; 
 int MPI2_IOC_STATE_MASK ; 
 int MPI2_IOC_STATE_OPERATIONAL ; 
 int FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC3(struct MPT3SAS_ADAPTER *ioc)
{
	u32 ioc_state;

	ioc->pending_io_count = 0;

	ioc_state = FUNC0(ioc, 0);
	if ((ioc_state & MPI2_IOC_STATE_MASK) != MPI2_IOC_STATE_OPERATIONAL)
		return;

	/* pending command count */
	ioc->pending_io_count = FUNC1(ioc->shost);

	if (!ioc->pending_io_count)
		return;

	/* wait for pending commands to complete */
	FUNC2(ioc->reset_wq, ioc->pending_io_count == 0, 10 * HZ);
}