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
struct net_device {int /*<<< orphan*/  name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {int /*<<< orphan*/  fsm; } ;
struct ctcm_priv {struct channel** channel; struct mpc_group* mpcg; } ;
struct channel {int /*<<< orphan*/  fsm; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int CH_XID0_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 size_t CTCM_READ ; 
 size_t CTCM_WRITE ; 
 int /*<<< orphan*/  CTC_DBF_DEBUG ; 
 int /*<<< orphan*/  MPCG_EVENT_INOP ; 
#define  MPCG_STATE_XID2INITW 128 
 int /*<<< orphan*/  MPC_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(fsm_instance *fi, int event, void *arg)
{
	struct net_device *dev = arg;
	struct ctcm_priv *priv;
	struct mpc_group *grp;
	struct channel *wch;
	struct channel *rch;

	priv = dev->ml_priv;
	grp = priv->mpcg;
	wch = priv->channel[CTCM_WRITE];
	rch = priv->channel[CTCM_READ];

	switch (FUNC2(grp->fsm)) {
	case MPCG_STATE_XID2INITW:
		/* Unless there is outstanding IO on the  */
		/* channel just return and wait for ATTN  */
		/* interrupt to begin XID negotiations	  */
		if ((FUNC2(rch->fsm) == CH_XID0_PENDING) &&
		   (FUNC2(wch->fsm) == CH_XID0_PENDING))
			break;
		/* Else, fall through */
	default:
		FUNC1(grp->fsm, MPCG_EVENT_INOP, dev);
	}

	FUNC0(MPC_TRACE, CTC_DBF_DEBUG,
			"%s: dev=%s exit",
			CTCM_FUNTAIL, dev->name);
	return;
}