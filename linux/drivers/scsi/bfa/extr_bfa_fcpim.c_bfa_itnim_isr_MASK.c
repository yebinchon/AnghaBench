#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union bfi_itn_i2h_msg_u {TYPE_3__* sler_event; TYPE_2__* delete_rsp; TYPE_1__* create_rsp; struct bfi_msg_s* msg; } ;
struct TYPE_8__ {int msg_id; } ;
struct bfi_msg_s {TYPE_4__ mhdr; } ;
struct bfa_s {int dummy; } ;
struct bfa_itnim_s {int dummy; } ;
struct bfa_fcpim_s {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bfa_handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; int /*<<< orphan*/  bfa_handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  bfa_handle; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_itnim_s* FUNC1 (struct bfa_fcpim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BFA_ITNIM_SM_FWRSP ; 
 int /*<<< orphan*/  BFA_ITNIM_SM_SLER ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
#define  BFI_ITN_I2H_CREATE_RSP 130 
#define  BFI_ITN_I2H_DELETE_RSP 129 
#define  BFI_ITN_I2H_SLER_EVENT 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  create_comps ; 
 int /*<<< orphan*/  delete_comps ; 
 int /*<<< orphan*/  sler_events ; 

void
FUNC6(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	struct bfa_fcpim_s *fcpim = FUNC0(bfa);
	union bfi_itn_i2h_msg_u msg;
	struct bfa_itnim_s *itnim;

	FUNC5(bfa, m->mhdr.msg_id);

	msg.msg = m;

	switch (m->mhdr.msg_id) {
	case BFI_ITN_I2H_CREATE_RSP:
		itnim = FUNC1(fcpim,
						msg.create_rsp->bfa_handle);
		FUNC2(msg.create_rsp->status != BFA_STATUS_OK);
		FUNC4(itnim, create_comps);
		FUNC3(itnim, BFA_ITNIM_SM_FWRSP);
		break;

	case BFI_ITN_I2H_DELETE_RSP:
		itnim = FUNC1(fcpim,
						msg.delete_rsp->bfa_handle);
		FUNC2(msg.delete_rsp->status != BFA_STATUS_OK);
		FUNC4(itnim, delete_comps);
		FUNC3(itnim, BFA_ITNIM_SM_FWRSP);
		break;

	case BFI_ITN_I2H_SLER_EVENT:
		itnim = FUNC1(fcpim,
						msg.sler_event->bfa_handle);
		FUNC4(itnim, sler_events);
		FUNC3(itnim, BFA_ITNIM_SM_SLER);
		break;

	default:
		FUNC5(bfa, m->mhdr.msg_id);
		FUNC2(1);
	}
}