#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_3__* ptp_rdata; TYPE_2__ disc; int /*<<< orphan*/  lp_mutex; } ;
struct TYPE_6__ {void* node_name; void* port_name; } ;
struct TYPE_8__ {TYPE_1__ ids; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 TYPE_3__* FUNC1 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct fc_lport *lport,
			       u32 remote_fid, u64 remote_wwpn,
			       u64 remote_wwnn)
{
	FUNC6(&lport->lp_mutex);

	if (lport->ptp_rdata) {
		FUNC3(lport->ptp_rdata);
		FUNC5(&lport->ptp_rdata->kref, fc_rport_destroy);
	}
	FUNC7(&lport->disc.disc_mutex);
	lport->ptp_rdata = FUNC1(lport, remote_fid);
	FUNC4(&lport->ptp_rdata->kref);
	lport->ptp_rdata->ids.port_name = remote_wwpn;
	lport->ptp_rdata->ids.node_name = remote_wwnn;
	FUNC8(&lport->disc.disc_mutex);

	FUNC2(lport->ptp_rdata);

	FUNC0(lport);
}