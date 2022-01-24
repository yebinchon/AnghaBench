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
struct fc_seq {int ssb_stat; int cnt; int /*<<< orphan*/  id; } ;
struct fc_frame_header {void* fh_seq_cnt; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int /*<<< orphan*/  ex_lock; struct fc_seq seq; int /*<<< orphan*/  r_a_tov; int /*<<< orphan*/  lp; } ;
struct fc_ba_acc {void* ba_low_seq_cnt; void* ba_high_seq_cnt; int /*<<< orphan*/  ba_seq_id_val; int /*<<< orphan*/  ba_seq_id; } ;

/* Variables and functions */
 int ESB_ST_ABNORMAL ; 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_REC_QUAL ; 
 int /*<<< orphan*/  FC_BA_RJT_INV_XID ; 
 int /*<<< orphan*/  FC_BA_RJT_UNABLE ; 
 int /*<<< orphan*/  FC_BA_SEQ_ID_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*) ; 
 int /*<<< orphan*/  FC_RCTL_BA_ACC ; 
 int /*<<< orphan*/  FC_TYPE_BLS ; 
 int SSB_ST_RESP ; 
 int /*<<< orphan*/  FUNC1 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC6 (struct fc_frame*) ; 
 struct fc_ba_acc* FUNC7 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_seq*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_seq* FUNC9 (struct fc_seq*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_ba_acc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct fc_exch *ep, struct fc_frame *rx_fp)
{
	struct fc_frame *fp;
	struct fc_ba_acc *ap;
	struct fc_frame_header *fh;
	struct fc_seq *sp;

	if (!ep)
		goto reject;

	FUNC0(ep, "exch: ABTS received\n");
	fp = FUNC4(ep->lp, sizeof(*ap));
	if (!fp) {
		FUNC0(ep, "Drop ABTS request, out of memory\n");
		goto free;
	}

	FUNC12(&ep->ex_lock);
	if (ep->esb_stat & ESB_ST_COMPLETE) {
		FUNC13(&ep->ex_lock);
		FUNC0(ep, "exch: ABTS rejected, exchange complete\n");
		FUNC5(fp);
		goto reject;
	}
	if (!(ep->esb_stat & ESB_ST_REC_QUAL)) {
		ep->esb_stat |= ESB_ST_REC_QUAL;
		FUNC1(ep);		/* hold for REC_QUAL */
	}
	FUNC3(ep, ep->r_a_tov);
	fh = FUNC6(fp);
	ap = FUNC7(fp, sizeof(*ap));
	FUNC11(ap, 0, sizeof(*ap));
	sp = &ep->seq;
	ap->ba_high_seq_cnt = FUNC10(0xffff);
	if (sp->ssb_stat & SSB_ST_RESP) {
		ap->ba_seq_id = sp->id;
		ap->ba_seq_id_val = FC_BA_SEQ_ID_VAL;
		ap->ba_high_seq_cnt = fh->fh_seq_cnt;
		ap->ba_low_seq_cnt = FUNC10(sp->cnt);
	}
	sp = FUNC9(sp);
	FUNC8(sp, fp, FC_RCTL_BA_ACC, FC_TYPE_BLS);
	ep->esb_stat |= ESB_ST_ABNORMAL;
	FUNC13(&ep->ex_lock);

free:
	FUNC5(rx_fp);
	return;

reject:
	FUNC2(rx_fp, FC_BA_RJT_UNABLE, FC_BA_RJT_INV_XID);
	goto free;
}