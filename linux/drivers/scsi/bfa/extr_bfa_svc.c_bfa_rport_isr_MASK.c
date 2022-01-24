#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
union bfi_rport_i2h_msg_u {TYPE_5__* lip_scn; TYPE_4__* qos_scn_evt; TYPE_2__* delete_rsp; TYPE_1__* create_rsp; struct bfi_msg_s* msg; } ;
struct TYPE_12__ {int msg_id; } ;
struct bfi_msg_s {TYPE_6__ mhdr; } ;
struct bfa_s {int dummy; } ;
struct TYPE_9__ {TYPE_4__* fw_msg; } ;
struct bfa_rport_s {int /*<<< orphan*/  rport_drv; TYPE_3__ event_arg; int /*<<< orphan*/  qos_attr; int /*<<< orphan*/  fw_handle; } ;
struct TYPE_11__ {int /*<<< orphan*/  bfa_handle; int /*<<< orphan*/  loop_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  bfa_handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; int /*<<< orphan*/  bfa_handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  status; int /*<<< orphan*/  qos_attr; int /*<<< orphan*/  fw_handle; int /*<<< orphan*/  bfa_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*) ; 
 struct bfa_rport_s* FUNC1 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BFA_RPORT_SM_FWRSP ; 
 int /*<<< orphan*/  BFA_RPORT_SM_QOS_SCN ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
#define  BFI_RPORT_I2H_CREATE_RSP 133 
#define  BFI_RPORT_I2H_DELETE_RSP 132 
#define  BFI_RPORT_I2H_LIP_SCN_OFFLINE 131 
#define  BFI_RPORT_I2H_LIP_SCN_ONLINE 130 
#define  BFI_RPORT_I2H_NO_DEV 129 
#define  BFI_RPORT_I2H_QOS_SCN 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_s*,struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_s*,struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bfa_s*,int) ; 

void
FUNC11(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	union bfi_rport_i2h_msg_u msg;
	struct bfa_rport_s *rp;

	FUNC10(bfa, m->mhdr.msg_id);

	msg.msg = m;

	switch (m->mhdr.msg_id) {
	case BFI_RPORT_I2H_CREATE_RSP:
		rp = FUNC1(bfa, msg.create_rsp->bfa_handle);
		rp->fw_handle = msg.create_rsp->fw_handle;
		rp->qos_attr = msg.create_rsp->qos_attr;
		FUNC7(bfa, rp);
		FUNC2(msg.create_rsp->status != BFA_STATUS_OK);
		FUNC9(rp, BFA_RPORT_SM_FWRSP);
		break;

	case BFI_RPORT_I2H_DELETE_RSP:
		rp = FUNC1(bfa, msg.delete_rsp->bfa_handle);
		FUNC2(msg.delete_rsp->status != BFA_STATUS_OK);
		FUNC8(bfa, rp);
		FUNC9(rp, BFA_RPORT_SM_FWRSP);
		break;

	case BFI_RPORT_I2H_QOS_SCN:
		rp = FUNC1(bfa, msg.qos_scn_evt->bfa_handle);
		rp->event_arg.fw_msg = msg.qos_scn_evt;
		FUNC9(rp, BFA_RPORT_SM_QOS_SCN);
		break;

	case BFI_RPORT_I2H_LIP_SCN_ONLINE:
		FUNC6(FUNC0(bfa),
				&msg.lip_scn->loop_info);
		FUNC5(bfa);
		break;

	case BFI_RPORT_I2H_LIP_SCN_OFFLINE:
		FUNC4(bfa);
		break;

	case BFI_RPORT_I2H_NO_DEV:
		rp = FUNC1(bfa, msg.lip_scn->bfa_handle);
		FUNC3(rp->rport_drv);
		break;

	default:
		FUNC10(bfa, m->mhdr.msg_id);
		FUNC2(1);
	}
}