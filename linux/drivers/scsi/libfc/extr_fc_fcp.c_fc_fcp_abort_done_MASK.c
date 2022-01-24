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
struct fc_fcp_pkt {int /*<<< orphan*/  tm_done; scalar_t__ wait_for_comp; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_SRB_ABORTED ; 
 int /*<<< orphan*/  FC_SRB_ABORT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_pkt*) ; 

__attribute__((used)) static void FUNC2(struct fc_fcp_pkt *fsp)
{
	fsp->state |= FC_SRB_ABORTED;
	fsp->state &= ~FC_SRB_ABORT_PENDING;

	if (fsp->wait_for_comp)
		FUNC0(&fsp->tm_done);
	else
		FUNC1(fsp);
}