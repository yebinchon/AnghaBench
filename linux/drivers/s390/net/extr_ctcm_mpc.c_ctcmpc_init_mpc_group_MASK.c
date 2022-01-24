#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xid2 {int xid2_adj_id; int xid2_sender_id; } ;
struct th_header {int dummy; } ;
struct mpc_group {struct xid2* xid; int /*<<< orphan*/ * saved_xid2; TYPE_1__* rcvd_xid_skb; struct th_header* rcvd_xid_th; scalar_t__ rcvd_xid_data; TYPE_1__* xid_skb; int /*<<< orphan*/ * fsm; scalar_t__ xid_id; struct th_header* xid_th; scalar_t__ xid_skb_data; int /*<<< orphan*/  timer; } ;
struct ctcm_priv {struct mpc_group* mpcg; struct xid2* xid; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct ctcm_priv*) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_INFO ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPCG_NR_EVENTS ; 
 int /*<<< orphan*/  MPCG_NR_STATES ; 
 int /*<<< orphan*/  MPCG_STATE_RESET ; 
 int /*<<< orphan*/  MPC_BUFSIZE_DEFAULT ; 
 int /*<<< orphan*/  MPC_SETUP ; 
 int TH_HEADER_LENGTH ; 
 int XID2_LENGTH ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char init_xid ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct mpc_group*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct mpc_group* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpcg_event_names ; 
 int /*<<< orphan*/  mpcg_fsm ; 
 int /*<<< orphan*/  mpcg_fsm_len ; 
 int /*<<< orphan*/  mpcg_state_names ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 char thnorm ; 

struct mpc_group *FUNC11(struct ctcm_priv *priv)
{
	struct mpc_group *grp;

	FUNC0(MPC_SETUP, CTC_DBF_INFO,
			"Enter %s(%p)", CTCM_FUNTAIL, priv);

	grp = FUNC8(sizeof(struct mpc_group), GFP_KERNEL);
	if (grp == NULL)
		return NULL;

	grp->fsm = FUNC5("mpcg", mpcg_state_names, mpcg_event_names,
			MPCG_NR_STATES, MPCG_NR_EVENTS, mpcg_fsm,
			mpcg_fsm_len, GFP_KERNEL);
	if (grp->fsm == NULL) {
		FUNC6(grp);
		return NULL;
	}

	FUNC3(grp->fsm, MPCG_STATE_RESET);
	FUNC4(grp->fsm, &grp->timer);

	grp->xid_skb =
		 FUNC1(MPC_BUFSIZE_DEFAULT, GFP_ATOMIC | GFP_DMA);
	if (grp->xid_skb == NULL) {
		FUNC7(grp->fsm);
		FUNC6(grp);
		return NULL;
	}
	/*  base xid for all channels in group  */
	grp->xid_skb_data = grp->xid_skb->data;
	grp->xid_th = (struct th_header *)grp->xid_skb->data;
	FUNC9(grp->xid_skb, &thnorm, TH_HEADER_LENGTH);

	grp->xid = (struct xid2 *)FUNC10(grp->xid_skb);
	FUNC9(grp->xid_skb, &init_xid, XID2_LENGTH);
	grp->xid->xid2_adj_id = jiffies | 0xfff00000;
	grp->xid->xid2_sender_id = jiffies;

	grp->xid_id = FUNC10(grp->xid_skb);
	FUNC9(grp->xid_skb, "VTAM", 4);

	grp->rcvd_xid_skb =
		FUNC1(MPC_BUFSIZE_DEFAULT, GFP_ATOMIC|GFP_DMA);
	if (grp->rcvd_xid_skb == NULL) {
		FUNC7(grp->fsm);
		FUNC2(grp->xid_skb);
		FUNC6(grp);
		return NULL;
	}
	grp->rcvd_xid_data = grp->rcvd_xid_skb->data;
	grp->rcvd_xid_th = (struct th_header *)grp->rcvd_xid_skb->data;
	FUNC9(grp->rcvd_xid_skb, &thnorm, TH_HEADER_LENGTH);
	grp->saved_xid2 = NULL;
	priv->xid = grp->xid;
	priv->mpcg = grp;
	return grp;
}