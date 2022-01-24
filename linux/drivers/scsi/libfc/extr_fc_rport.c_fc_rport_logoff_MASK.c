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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {scalar_t__ rp_state; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  flags; TYPE_2__ ids; struct fc_lport* local_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* exch_mgr_reset ) (struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 int /*<<< orphan*/  FC_RP_STARTED ; 
 int /*<<< orphan*/  RPORT_EV_STOP ; 
 scalar_t__ RPORT_ST_DELETE ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct fc_rport_priv *rdata)
{
	struct fc_lport *lport = rdata->local_port;
	u32 port_id = rdata->ids.port_id;

	FUNC3(&rdata->rp_mutex);

	FUNC0(rdata, "Remove port\n");

	rdata->flags &= ~FC_RP_STARTED;
	if (rdata->rp_state == RPORT_ST_DELETE) {
		FUNC0(rdata, "Port in Delete state, not removing\n");
		goto out;
	}
	/*
	 * FC-LS states:
	 * To explicitly Logout, the initiating Nx_Port shall terminate
	 * other open Sequences that it initiated with the destination
	 * Nx_Port prior to performing Logout.
	 */
	lport->tt.exch_mgr_reset(lport, 0, port_id);
	lport->tt.exch_mgr_reset(lport, port_id, 0);

	FUNC2(rdata);

	/*
	 * Change the state to Delete so that we discard
	 * the response.
	 */
	FUNC1(rdata, RPORT_EV_STOP);
out:
	FUNC4(&rdata->rp_mutex);
	return 0;
}