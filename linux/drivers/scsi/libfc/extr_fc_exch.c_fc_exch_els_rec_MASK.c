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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_2__ tt; int /*<<< orphan*/  host; } ;
struct fc_frame {int dummy; } ;
struct TYPE_3__ {int rec_data; } ;
struct fc_exch {scalar_t__ oid; scalar_t__ oxid; scalar_t__ rxid; scalar_t__ sid; scalar_t__ did; int esb_stat; TYPE_1__ seq; } ;
struct fc_els_rec_acc {void* reca_e_stat; void* reca_fc4value; int /*<<< orphan*/  reca_rfid; int /*<<< orphan*/  reca_rx_id; int /*<<< orphan*/  reca_ofid; int /*<<< orphan*/  reca_ox_id; int /*<<< orphan*/  reca_cmd; } ;
struct fc_els_rec {int /*<<< orphan*/  rec_s_id; int /*<<< orphan*/  rec_ox_id; int /*<<< orphan*/  rec_rx_id; } ;
typedef  enum fc_els_rjt_reason { ____Placeholder_fc_els_rjt_reason } fc_els_rjt_reason ;
typedef  enum fc_els_rjt_explan { ____Placeholder_fc_els_rjt_explan } fc_els_rjt_explan ;

/* Variables and functions */
 int ELS_EXPL_INV_LEN ; 
 int ELS_EXPL_OXID_RXID ; 
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int ELS_RJT_LOGIC ; 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_RESP ; 
 int ESB_ST_SEQ_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 struct fc_exch* FUNC2 (struct fc_lport*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC5 (struct fc_lport*,int) ; 
 void* FUNC6 (struct fc_frame*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*,int,int) ; 
 struct fc_lport* FUNC9 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct fc_els_rec_acc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC18(struct fc_frame *rfp)
{
	struct fc_lport *lport;
	struct fc_frame *fp;
	struct fc_exch *ep;
	struct fc_els_rec *rp;
	struct fc_els_rec_acc *acc;
	enum fc_els_rjt_reason reason = ELS_RJT_LOGIC;
	enum fc_els_rjt_explan explan;
	u32 sid;
	u16 xid, rxid, oxid;

	lport = FUNC9(rfp);
	rp = FUNC6(rfp, sizeof(*rp));
	explan = ELS_EXPL_INV_LEN;
	if (!rp)
		goto reject;
	sid = FUNC15(rp->rec_s_id);
	rxid = FUNC16(rp->rec_rx_id);
	oxid = FUNC16(rp->rec_ox_id);

	explan = ELS_EXPL_OXID_RXID;
	if (sid == FUNC7(lport->host))
		xid = oxid;
	else
		xid = rxid;
	if (xid == FC_XID_UNKNOWN) {
		FUNC1(lport,
			     "REC request from %x: invalid rxid %x oxid %x\n",
			     sid, rxid, oxid);
		goto reject;
	}
	ep = FUNC2(lport, xid);
	if (!ep) {
		FUNC1(lport,
			     "REC request from %x: rxid %x oxid %x not found\n",
			     sid, rxid, oxid);
		goto reject;
	}
	FUNC0(ep, "REC request from %x: rxid %x oxid %x\n",
		    sid, rxid, oxid);
	if (ep->oid != sid || oxid != ep->oxid)
		goto rel;
	if (rxid != FC_XID_UNKNOWN && rxid != ep->rxid)
		goto rel;
	fp = FUNC5(lport, sizeof(*acc));
	if (!fp) {
		FUNC0(ep, "Drop REC request, out of memory\n");
		goto out;
	}

	acc = FUNC6(fp, sizeof(*acc));
	FUNC14(acc, 0, sizeof(*acc));
	acc->reca_cmd = ELS_LS_ACC;
	acc->reca_ox_id = rp->rec_ox_id;
	FUNC13(acc->reca_ofid, rp->rec_s_id, 3);
	acc->reca_rx_id = FUNC12(ep->rxid);
	if (ep->sid == ep->oid)
		FUNC10(acc->reca_rfid, ep->did);
	else
		FUNC10(acc->reca_rfid, ep->sid);
	acc->reca_fc4value = FUNC11(ep->seq.rec_data);
	acc->reca_e_stat = FUNC11(ep->esb_stat & (ESB_ST_RESP |
						 ESB_ST_SEQ_INIT |
						 ESB_ST_COMPLETE));
	FUNC4(fp, rfp, FC_RCTL_ELS_REP, 0);
	lport->tt.frame_send(lport, fp);
out:
	FUNC3(ep);
	return;

rel:
	FUNC3(ep);
reject:
	FUNC8(rfp, reason, explan);
}