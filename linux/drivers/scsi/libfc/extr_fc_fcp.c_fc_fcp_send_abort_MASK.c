#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fc_fcp_pkt {int /*<<< orphan*/  seq_ptr; int /*<<< orphan*/  state; TYPE_1__* lp; } ;
struct TYPE_4__ {int /*<<< orphan*/  FcpPktAborts; } ;
struct TYPE_3__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FC_SRB_ABORT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fc_fcp_pkt *fsp)
{
	int rc;

	if (!fsp->seq_ptr)
		return -EINVAL;

	FUNC3(fsp->lp->stats, FUNC2())->FcpPktAborts++;
	FUNC4();

	fsp->state |= FC_SRB_ABORT_PENDING;
	rc = FUNC1(fsp->seq_ptr, 0);
	/*
	 * fc_seq_exch_abort() might return -ENXIO if
	 * the sequence is already completed
	 */
	if (rc == -ENXIO) {
		FUNC0(fsp);
		rc = 0;
	}
	return rc;
}