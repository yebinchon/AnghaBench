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
typedef  int /*<<< orphan*/  u16 ;
struct fc_seq {int dummy; } ;
struct fc_frame_header {int fh_r_ctl; int /*<<< orphan*/  fh_f_ctl; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; scalar_t__ fh_type; int /*<<< orphan*/  r_a_tov; int /*<<< orphan*/  ex_lock; struct fc_seq seq; int /*<<< orphan*/  seq_id; int /*<<< orphan*/  timeout_work; } ;
struct fc_ba_acc {int /*<<< orphan*/  ba_seq_id; int /*<<< orphan*/  ba_seq_id_val; int /*<<< orphan*/  ba_high_seq_cnt; int /*<<< orphan*/  ba_low_seq_cnt; } ;

/* Variables and functions */
 int ESB_ST_REC_QUAL ; 
 int /*<<< orphan*/  FC_BA_SEQ_ID_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*,...) ; 
 int FC_FC_LAST_SEQ ; 
#define  FC_RCTL_BA_ACC 129 
#define  FC_RCTL_BA_RJT 128 
 scalar_t__ FC_TYPE_FCP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_exch*) ; 
 int FUNC3 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC9 (struct fc_frame*) ; 
 struct fc_ba_acc* FUNC10 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_exch*,struct fc_seq*,struct fc_frame*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct fc_exch *ep, struct fc_frame *fp)
{
	struct fc_frame_header *fh;
	struct fc_ba_acc *ap;
	struct fc_seq *sp;
	u16 low;
	u16 high;
	int rc = 1, has_rec = 0;

	fh = FUNC9(fp);
	FUNC0(ep, "exch: BLS rctl %x - %s\n", fh->fh_r_ctl,
		    FUNC5(fh->fh_r_ctl));

	if (FUNC1(&ep->timeout_work)) {
		FUNC0(ep, "Exchange timer canceled due to ABTS response\n");
		FUNC6(ep);	/* release from pending timer hold */
	}

	FUNC14(&ep->ex_lock);
	switch (fh->fh_r_ctl) {
	case FC_RCTL_BA_ACC:
		ap = FUNC10(fp, sizeof(*ap));
		if (!ap)
			break;

		/*
		 * Decide whether to establish a Recovery Qualifier.
		 * We do this if there is a non-empty SEQ_CNT range and
		 * SEQ_ID is the same as the one we aborted.
		 */
		low = FUNC13(ap->ba_low_seq_cnt);
		high = FUNC13(ap->ba_high_seq_cnt);
		if ((ep->esb_stat & ESB_ST_REC_QUAL) == 0 &&
		    (ap->ba_seq_id_val != FC_BA_SEQ_ID_VAL ||
		     ap->ba_seq_id == ep->seq_id) && low != high) {
			ep->esb_stat |= ESB_ST_REC_QUAL;
			FUNC4(ep);  /* hold for recovery qualifier */
			has_rec = 1;
		}
		break;
	case FC_RCTL_BA_RJT:
		break;
	default:
		break;
	}

	/* do we need to do some other checks here. Can we reuse more of
	 * fc_exch_recv_seq_resp
	 */
	sp = &ep->seq;
	/*
	 * do we want to check END_SEQ as well as LAST_SEQ here?
	 */
	if (ep->fh_type != FC_TYPE_FCP &&
	    FUNC12(fh->fh_f_ctl) & FC_FC_LAST_SEQ)
		rc = FUNC3(ep);
	FUNC15(&ep->ex_lock);

	FUNC4(ep);
	if (!rc)
		FUNC2(ep);
	if (!FUNC11(ep, sp, fp))
		FUNC8(fp);
	if (has_rec)
		FUNC7(ep, ep->r_a_tov);
	FUNC6(ep);
}