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
struct fc_lport {int /*<<< orphan*/  stats; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  scsi_pkt_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  timer; int /*<<< orphan*/  ref_cnt; int /*<<< orphan*/  xfer_ddp; struct fc_lport* lp; } ;
struct fc_fcp_internal {int /*<<< orphan*/  scsi_pkt_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  FcpPktAllocFails; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fc_fcp_internal* FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct fc_fcp_pkt* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fc_fcp_pkt *FUNC10(struct fc_lport *lport, gfp_t gfp)
{
	struct fc_fcp_internal *si = FUNC1(lport);
	struct fc_fcp_pkt *fsp;

	fsp = FUNC3(si->scsi_pkt_pool, gfp);
	if (fsp) {
		FUNC4(fsp, 0, sizeof(*fsp));
		fsp->lp = lport;
		fsp->xfer_ddp = FC_XID_UNKNOWN;
		FUNC7(&fsp->ref_cnt, 1);
		FUNC9(&fsp->timer, NULL, 0);
		FUNC0(&fsp->list);
		FUNC8(&fsp->scsi_pkt_lock);
	} else {
		FUNC5(lport->stats, FUNC2())->FcpPktAllocFails++;
		FUNC6();
	}
	return fsp;
}