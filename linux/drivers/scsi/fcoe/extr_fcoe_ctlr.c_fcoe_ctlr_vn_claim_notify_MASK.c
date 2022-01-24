#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int port_id; int /*<<< orphan*/  port_name; } ;
struct TYPE_6__ {TYPE_2__ ids; } ;
struct fcoe_rport {int flags; TYPE_3__ rdata; int /*<<< orphan*/  fcoe_len; int /*<<< orphan*/  enode_mac; } ;
struct fcoe_ctlr {int state; int port_id; TYPE_1__* lp; } ;
struct TYPE_4__ {int /*<<< orphan*/  wwpn; } ;

/* Variables and functions */
 int FIP_FL_REC_OR_P2P ; 
 int /*<<< orphan*/  FIP_SC_VN_CLAIM_REP ; 
 int /*<<< orphan*/  FIP_SC_VN_PROBE_REQ ; 
#define  FIP_ST_VNMP_CLAIM 132 
#define  FIP_ST_VNMP_PROBE1 131 
#define  FIP_ST_VNMP_PROBE2 130 
#define  FIP_ST_VNMP_START 129 
#define  FIP_ST_VNMP_UP 128 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*,...) ; 
 int /*<<< orphan*/  fcoe_all_vn2vn ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*,struct fcoe_rport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_ctlr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fcoe_ctlr *fip,
				      struct fcoe_rport *new)
{
	if (new->flags & FIP_FL_REC_OR_P2P) {
		FUNC0(fip, "send probe req for P2P/REC\n");
		FUNC4(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
		return;
	}
	switch (fip->state) {
	case FIP_ST_VNMP_START:
	case FIP_ST_VNMP_PROBE1:
	case FIP_ST_VNMP_PROBE2:
		if (new->rdata.ids.port_id == fip->port_id) {
			FUNC0(fip, "vn_claim_notify: "
					"restart, state %d\n",
					fip->state);
			FUNC3(fip);
		}
		break;
	case FIP_ST_VNMP_CLAIM:
	case FIP_ST_VNMP_UP:
		if (new->rdata.ids.port_id == fip->port_id) {
			if (new->rdata.ids.port_name > fip->lp->wwpn) {
				FUNC0(fip, "vn_claim_notify: "
						"restart, port_id collision\n");
				FUNC3(fip);
				break;
			}
			FUNC0(fip, "vn_claim_notify: "
					"send claim notify\n");
			FUNC5(fip);
			break;
		}
		FUNC0(fip, "vn_claim_notify: send reply to %x\n",
				new->rdata.ids.port_id);
		FUNC4(fip, FIP_SC_VN_CLAIM_REP, new->enode_mac,
				  FUNC6((u32)new->fcoe_len,
				      FUNC1(fip)));
		FUNC2(fip, new);
		break;
	default:
		FUNC0(fip, "vn_claim_notify: "
				"ignoring claim from %x\n",
				new->rdata.ids.port_id);
		break;
	}
}