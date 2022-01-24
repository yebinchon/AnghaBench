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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct fc_lport {int /*<<< orphan*/  host; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {scalar_t__ oxid; scalar_t__ rxid; scalar_t__ sid; int esb_stat; int /*<<< orphan*/  ex_lock; int /*<<< orphan*/  ex_refcnt; } ;
struct fc_els_rrq {int /*<<< orphan*/  rrq_rx_id; int /*<<< orphan*/  rrq_ox_id; int /*<<< orphan*/  rrq_s_id; } ;
typedef  enum fc_els_rjt_explan { ____Placeholder_fc_els_rjt_explan } fc_els_rjt_explan ;

/* Variables and functions */
 int ELS_EXPL_INV_LEN ; 
 int ELS_EXPL_OXID_RXID ; 
 int ELS_EXPL_SID ; 
 int /*<<< orphan*/  ELS_RJT_LOGIC ; 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_REC_QUAL ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fc_exch* FUNC2 (struct fc_lport*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch*) ; 
 struct fc_els_rrq* FUNC5 (struct fc_frame*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*,int /*<<< orphan*/ ,int) ; 
 struct fc_lport* FUNC9 (struct fc_frame*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct fc_frame *fp)
{
	struct fc_lport *lport;
	struct fc_exch *ep = NULL;	/* request or subject exchange */
	struct fc_els_rrq *rp;
	u32 sid;
	u16 xid;
	enum fc_els_rjt_explan explan;

	lport = FUNC9(fp);
	rp = FUNC5(fp, sizeof(*rp));
	explan = ELS_EXPL_INV_LEN;
	if (!rp)
		goto reject;

	/*
	 * lookup subject exchange.
	 */
	sid = FUNC10(rp->rrq_s_id);		/* subject source */
	xid = FUNC6(lport->host) == sid ?
			FUNC11(rp->rrq_ox_id) : FUNC11(rp->rrq_rx_id);
	ep = FUNC2(lport, xid);
	explan = ELS_EXPL_OXID_RXID;
	if (!ep)
		goto reject;
	FUNC12(&ep->ex_lock);
	FUNC0(ep, "RRQ request from %x: xid %x rxid %x oxid %x\n",
		    sid, xid, FUNC11(rp->rrq_rx_id), FUNC11(rp->rrq_ox_id));
	if (ep->oxid != FUNC11(rp->rrq_ox_id))
		goto unlock_reject;
	if (ep->rxid != FUNC11(rp->rrq_rx_id) &&
	    ep->rxid != FC_XID_UNKNOWN)
		goto unlock_reject;
	explan = ELS_EXPL_SID;
	if (ep->sid != sid)
		goto unlock_reject;

	/*
	 * Clear Recovery Qualifier state, and cancel timer if complete.
	 */
	if (ep->esb_stat & ESB_ST_REC_QUAL) {
		ep->esb_stat &= ~ESB_ST_REC_QUAL;
		FUNC1(&ep->ex_refcnt);	/* drop hold for rec qual */
	}
	if (ep->esb_stat & ESB_ST_COMPLETE)
		FUNC4(ep);

	FUNC13(&ep->ex_lock);

	/*
	 * Send LS_ACC.
	 */
	FUNC7(fp);
	goto out;

unlock_reject:
	FUNC13(&ep->ex_lock);
reject:
	FUNC8(fp, ELS_RJT_LOGIC, explan);
out:
	if (ep)
		FUNC3(ep);	/* drop hold from fc_exch_find */
}