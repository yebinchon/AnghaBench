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
struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int /*<<< orphan*/  fsm; } ;
struct channel {scalar_t__ protocol; struct net_device* netdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  timer; TYPE_2__* ccw; int /*<<< orphan*/  cdev; TYPE_1__* trans_skb; int /*<<< orphan*/  id; scalar_t__ sense_rc; } ;
typedef  int /*<<< orphan*/  fsm_instance ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTCM_INITIAL_BLOCKLEN ; 
 scalar_t__ CTCM_PROTO_OS390 ; 
 scalar_t__ CTCM_PROTO_S390 ; 
 scalar_t__ CTCM_READ ; 
 int /*<<< orphan*/  CTCM_TIME_5_SEC ; 
 scalar_t__ CTCM_WRITE ; 
 int /*<<< orphan*/  CTC_DBF_DEBUG ; 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int /*<<< orphan*/  CTC_EVENT_TIMER ; 
 int CTC_STATE_RXINIT ; 
 int CTC_STATE_SETUPWAIT ; 
 int CTC_STATE_TXIDLE ; 
 int CTC_STATE_TXINIT ; 
 int /*<<< orphan*/  DEV_EVENT_RXUP ; 
 int /*<<< orphan*/  DEV_EVENT_TXUP ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct channel*,int,char*) ; 
 scalar_t__ FUNC5 (struct channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct channel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(fsm_instance *fi, int event, void *arg)
{
	int rc;
	struct channel *ch = arg;
	int fsmstate = FUNC9(fi);

	FUNC1(TRACE, CTC_DBF_NOTICE,
		"%s(%s) : %02x",
		CTCM_FUNTAIL, ch->id, fsmstate);

	ch->sense_rc = 0;	/* reset unit check report control */
	if (fsmstate == CTC_STATE_TXIDLE)
		FUNC1(TRACE, CTC_DBF_DEBUG,
			"%s(%s): remote side issued READ?, init.\n",
				CTCM_FUNTAIL, ch->id);
	FUNC7(&ch->timer);
	if (FUNC5(ch))
		return;
	if ((fsmstate == CTC_STATE_SETUPWAIT) &&
	    (ch->protocol == CTCM_PROTO_OS390)) {
		/* OS/390 resp. z/OS */
		if (FUNC0(ch->flags) == CTCM_READ) {
			*((__u16 *)ch->trans_skb->data) = CTCM_INITIAL_BLOCKLEN;
			FUNC6(&ch->timer, CTCM_TIME_5_SEC,
				     CTC_EVENT_TIMER, ch);
			FUNC3(fi, event, arg);
		} else {
			struct net_device *dev = ch->netdev;
			struct ctcm_priv *priv = dev->ml_priv;
			FUNC10(fi, CTC_STATE_TXIDLE);
			FUNC8(priv->fsm, DEV_EVENT_TXUP, dev);
		}
		return;
	}
	/*
	 * Don't setup a timer for receiving the initial RX frame
	 * if in compatibility mode, since VM TCP delays the initial
	 * frame until it has some data to send.
	 */
	if ((FUNC0(ch->flags) == CTCM_WRITE) ||
	    (ch->protocol != CTCM_PROTO_S390))
		FUNC6(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);

	*((__u16 *)ch->trans_skb->data) = CTCM_INITIAL_BLOCKLEN;
	ch->ccw[1].count = 2;	/* Transfer only length */

	FUNC10(fi, (FUNC0(ch->flags) == CTCM_READ)
		     ? CTC_STATE_RXINIT : CTC_STATE_TXINIT);
	rc = FUNC2(ch->cdev, &ch->ccw[0], 0, 0xff, 0);
	if (rc != 0) {
		FUNC7(&ch->timer);
		FUNC10(fi, CTC_STATE_SETUPWAIT);
		FUNC4(ch, rc, "init IO");
	}
	/*
	 * If in compatibility mode since we don't setup a timer, we
	 * also signal RX channel up immediately. This enables us
	 * to send packets early which in turn usually triggers some
	 * reply from VM TCP which brings up the RX channel to it's
	 * final state.
	 */
	if ((FUNC0(ch->flags) == CTCM_READ) &&
	    (ch->protocol == CTCM_PROTO_S390)) {
		struct net_device *dev = ch->netdev;
		struct ctcm_priv *priv = dev->ml_priv;
		FUNC8(priv->fsm, DEV_EVENT_RXUP, dev);
	}
}