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
struct fc_seq {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int state; int /*<<< orphan*/  lp; scalar_t__ sid; int /*<<< orphan*/  did; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ESB_ST_ABNORMAL ; 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_SEQ_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*,int,...) ; 
 int FC_EX_DONE ; 
 int FC_EX_RST_CLEANUP ; 
 int FC_FC_END_SEQ ; 
 int FC_FC_SEQ_INIT ; 
 int /*<<< orphan*/  FC_RCTL_BA_ABTS ; 
 int /*<<< orphan*/  FC_TYPE_BLS ; 
 int /*<<< orphan*/  FUNC1 (struct fc_exch*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fc_seq*,struct fc_frame*) ; 
 struct fc_seq* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fc_exch *ep,
				unsigned int timer_msec)
{
	struct fc_seq *sp;
	struct fc_frame *fp;
	int error;

	FUNC0(ep, "exch: abort, time %d msecs\n", timer_msec);
	if (ep->esb_stat & (ESB_ST_COMPLETE | ESB_ST_ABNORMAL) ||
	    ep->state & (FC_EX_DONE | FC_EX_RST_CLEANUP)) {
		FUNC0(ep, "exch: already completed esb %x state %x\n",
			    ep->esb_stat, ep->state);
		return -ENXIO;
	}

	/*
	 * Send the abort on a new sequence if possible.
	 */
	sp = FUNC5(&ep->seq);
	if (!sp)
		return -ENOMEM;

	if (timer_msec)
		FUNC1(ep, timer_msec);

	if (ep->sid) {
		/*
		 * Send an abort for the sequence that timed out.
		 */
		fp = FUNC3(ep->lp, 0);
		if (fp) {
			ep->esb_stat |= ESB_ST_SEQ_INIT;
			FUNC2(fp, FC_RCTL_BA_ABTS, ep->did, ep->sid,
				       FC_TYPE_BLS, FC_FC_END_SEQ |
				       FC_FC_SEQ_INIT, 0);
			error = FUNC4(ep->lp, sp, fp);
		} else {
			error = -ENOBUFS;
		}
	} else {
		/*
		 * If not logged into the fabric, don't send ABTS but leave
		 * sequence active until next timeout.
		 */
		error = 0;
	}
	ep->esb_stat |= ESB_ST_ABNORMAL;
	return error;
}