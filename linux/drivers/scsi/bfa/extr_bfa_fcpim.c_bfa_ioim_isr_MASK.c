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
typedef  scalar_t__ u16 ;
struct bfi_msg_s {int dummy; } ;
struct bfi_ioim_rsp_s {int io_status; int reuse_io_tag; int abort_tag; int /*<<< orphan*/  io_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_ioim_s {scalar_t__ iotag; int abort_tag; int /*<<< orphan*/  itnim; int /*<<< orphan*/  bfa; TYPE_1__* iosp; } ;
struct bfa_fcpim_s {int dummy; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {struct bfi_msg_s comp_rspmsg; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_ioim_s* FUNC1 (struct bfa_fcpim_s*,scalar_t__) ; 
 int BFA_IOIM_SM_ABORT_COMP ; 
 int BFA_IOIM_SM_ABORT_DONE ; 
 int BFA_IOIM_SM_COMP ; 
 int BFA_IOIM_SM_COMP_UTAG ; 
 int BFA_IOIM_SM_DONE ; 
 int BFA_IOIM_SM_FREE ; 
 int BFA_IOIM_SM_SQRETRY ; 
#define  BFI_IOIM_STS_ABORTED 135 
#define  BFI_IOIM_STS_HOST_ABORTED 134 
#define  BFI_IOIM_STS_OK 133 
#define  BFI_IOIM_STS_PROTO_ERR 132 
#define  BFI_IOIM_STS_RES_FREE 131 
#define  BFI_IOIM_STS_SQER_NEEDED 130 
#define  BFI_IOIM_STS_TIMEDOUT 129 
#define  BFI_IOIM_STS_UTAG 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_ioim_sm_active ; 
 scalar_t__ FUNC4 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioim_s*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  iocom_hostabrts ; 
 int /*<<< orphan*/  iocom_proto_err ; 
 int /*<<< orphan*/  iocom_res_free ; 
 int /*<<< orphan*/  iocom_sqer_needed ; 
 int /*<<< orphan*/  iocom_utags ; 
 int /*<<< orphan*/  iocomp_aborted ; 
 int /*<<< orphan*/  iocomp_ok ; 
 int /*<<< orphan*/  iocomp_timedout ; 

void
FUNC8(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	struct bfa_fcpim_s *fcpim = FUNC0(bfa);
	struct bfi_ioim_rsp_s *rsp = (struct bfi_ioim_rsp_s *) m;
	struct bfa_ioim_s *ioim;
	u16	iotag;
	enum bfa_ioim_event evt = BFA_IOIM_SM_COMP;

	iotag = FUNC3(rsp->io_tag);

	ioim = FUNC1(fcpim, iotag);
	FUNC2(ioim->iotag != iotag);

	FUNC7(ioim->bfa, ioim->iotag);
	FUNC7(ioim->bfa, rsp->io_status);
	FUNC7(ioim->bfa, rsp->reuse_io_tag);

	if (FUNC4(ioim, bfa_ioim_sm_active))
		ioim->iosp->comp_rspmsg = *m;

	switch (rsp->io_status) {
	case BFI_IOIM_STS_OK:
		FUNC6(ioim->itnim, iocomp_ok);
		if (rsp->reuse_io_tag == 0)
			evt = BFA_IOIM_SM_DONE;
		else
			evt = BFA_IOIM_SM_COMP;
		break;

	case BFI_IOIM_STS_TIMEDOUT:
		FUNC6(ioim->itnim, iocomp_timedout);
		/* fall through */
	case BFI_IOIM_STS_ABORTED:
		rsp->io_status = BFI_IOIM_STS_ABORTED;
		FUNC6(ioim->itnim, iocomp_aborted);
		if (rsp->reuse_io_tag == 0)
			evt = BFA_IOIM_SM_DONE;
		else
			evt = BFA_IOIM_SM_COMP;
		break;

	case BFI_IOIM_STS_PROTO_ERR:
		FUNC6(ioim->itnim, iocom_proto_err);
		FUNC2(!rsp->reuse_io_tag);
		evt = BFA_IOIM_SM_COMP;
		break;

	case BFI_IOIM_STS_SQER_NEEDED:
		FUNC6(ioim->itnim, iocom_sqer_needed);
		FUNC2(rsp->reuse_io_tag != 0);
		evt = BFA_IOIM_SM_SQRETRY;
		break;

	case BFI_IOIM_STS_RES_FREE:
		FUNC6(ioim->itnim, iocom_res_free);
		evt = BFA_IOIM_SM_FREE;
		break;

	case BFI_IOIM_STS_HOST_ABORTED:
		FUNC6(ioim->itnim, iocom_hostabrts);
		if (rsp->abort_tag != ioim->abort_tag) {
			FUNC7(ioim->bfa, rsp->abort_tag);
			FUNC7(ioim->bfa, ioim->abort_tag);
			return;
		}

		if (rsp->reuse_io_tag)
			evt = BFA_IOIM_SM_ABORT_COMP;
		else
			evt = BFA_IOIM_SM_ABORT_DONE;
		break;

	case BFI_IOIM_STS_UTAG:
		FUNC6(ioim->itnim, iocom_utags);
		evt = BFA_IOIM_SM_COMP_UTAG;
		break;

	default:
		FUNC2(1);
	}

	FUNC5(ioim, evt);
}