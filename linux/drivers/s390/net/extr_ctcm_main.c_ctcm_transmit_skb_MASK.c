#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned long len; int /*<<< orphan*/  users; int /*<<< orphan*/  data; int /*<<< orphan*/  protocol; } ;
struct net_device {struct ctcm_priv* ml_priv; } ;
struct ll_header {int length; scalar_t__ unused; void* type; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct ctcm_priv {TYPE_1__ stats; } ;
struct TYPE_8__ {unsigned long txlen; int /*<<< orphan*/  doios_single; int /*<<< orphan*/  send_stamp; } ;
struct channel {int collect_len; int max_bufsize; struct net_device* netdev; int /*<<< orphan*/  io_queue; int /*<<< orphan*/  timer; TYPE_2__ prof; int /*<<< orphan*/  cdev; TYPE_5__* ccw; int /*<<< orphan*/  fsm; scalar_t__ retry; TYPE_3__* trans_skb; int /*<<< orphan*/  collect_lock; int /*<<< orphan*/  collect_queue; } ;
struct ccw1 {int dummy; } ;
typedef  int __u16 ;
struct TYPE_10__ {int count; } ;
struct TYPE_9__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTCM_TIME_5_SEC ; 
 int /*<<< orphan*/  CTC_EVENT_TIMER ; 
 int /*<<< orphan*/  CTC_STATE_TX ; 
 scalar_t__ CTC_STATE_TXIDLE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 unsigned long LL_HEADER_LENGTH ; 
 struct sk_buff* FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct channel*,int,char*) ; 
 scalar_t__ FUNC4 (struct channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ do_debug_ccw ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct channel*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct ll_header*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,unsigned long) ; 
 scalar_t__ FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC28(struct channel *ch, struct sk_buff *skb)
{
	unsigned long saveflags;
	struct ll_header header;
	int rc = 0;
	__u16 block_len;
	int ccw_idx;
	struct sk_buff *nskb;
	unsigned long hi;

	/* we need to acquire the lock for testing the state
	 * otherwise we can have an IRQ changing the state to
	 * TXIDLE after the test but before acquiring the lock.
	 */
	FUNC26(&ch->collect_lock, saveflags);
	if (FUNC10(ch->fsm) != CTC_STATE_TXIDLE) {
		int l = skb->len + LL_HEADER_LENGTH;

		if (ch->collect_len + l > ch->max_bufsize - 2) {
			FUNC27(&ch->collect_lock, saveflags);
			return -EBUSY;
		} else {
			FUNC15(&skb->users);
			header.length = l;
			header.type = FUNC1(skb->protocol);
			header.unused = 0;
			FUNC13(FUNC20(skb, LL_HEADER_LENGTH), &header,
			       LL_HEADER_LENGTH);
			FUNC23(&ch->collect_queue, skb);
			ch->collect_len += l;
		}
		FUNC27(&ch->collect_lock, saveflags);
				goto done;
	}
	FUNC27(&ch->collect_lock, saveflags);
	/*
	 * Protect skb against beeing free'd by upper
	 * layers.
	 */
	FUNC15(&skb->users);
	ch->prof.txlen += skb->len;
	header.length = skb->len + LL_HEADER_LENGTH;
	header.type = FUNC1(skb->protocol);
	header.unused = 0;
	FUNC13(FUNC20(skb, LL_HEADER_LENGTH), &header, LL_HEADER_LENGTH);
	block_len = skb->len + 2;
	*((__u16 *)FUNC20(skb, 2)) = block_len;

	/*
	 * IDAL support in CTCM is broken, so we have to
	 * care about skb's above 2G ourselves.
	 */
	hi = ((unsigned long)FUNC25(skb) + LL_HEADER_LENGTH) >> 31;
	if (hi) {
		nskb = FUNC0(skb->len, GFP_ATOMIC | GFP_DMA);
		if (!nskb) {
			FUNC14(&skb->users);
			FUNC19(skb, LL_HEADER_LENGTH + 2);
			FUNC5(ch->netdev);
			return -ENOMEM;
		} else {
			FUNC22(nskb, skb->data, skb->len);
			FUNC15(&nskb->users);
			FUNC14(&skb->users);
			FUNC7(skb);
			skb = nskb;
		}
	}

	ch->ccw[4].count = block_len;
	if (FUNC16(&ch->ccw[4], skb->data)) {
		/*
		 * idal allocation failed, try via copying to
		 * trans_skb. trans_skb usually has a pre-allocated
		 * idal.
		 */
		if (FUNC4(ch)) {
			/*
			 * Remove our header. It gets added
			 * again on retransmit.
			 */
			FUNC14(&skb->users);
			FUNC19(skb, LL_HEADER_LENGTH + 2);
			FUNC5(ch->netdev);
			return -ENOMEM;
		}

		FUNC24(ch->trans_skb);
		ch->trans_skb->len = 0;
		ch->ccw[1].count = skb->len;
		FUNC17(skb,
				FUNC21(ch->trans_skb, skb->len), skb->len);
		FUNC14(&skb->users);
		FUNC7(skb);
		ccw_idx = 0;
	} else {
		FUNC23(&ch->io_queue, skb);
		ccw_idx = 3;
	}
	if (do_debug_ccw)
		FUNC6((char *)&ch->ccw[ccw_idx],
					sizeof(struct ccw1) * 3);
	ch->retry = 0;
	FUNC11(ch->fsm, CTC_STATE_TX);
	FUNC8(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
	FUNC26(FUNC12(ch->cdev), saveflags);
	ch->prof.send_stamp = jiffies;
	rc = FUNC2(ch->cdev, &ch->ccw[ccw_idx], 0, 0xff, 0);
	FUNC27(FUNC12(ch->cdev), saveflags);
	if (ccw_idx == 3)
		ch->prof.doios_single++;
	if (rc != 0) {
		FUNC9(&ch->timer);
		FUNC3(ch, rc, "single skb TX");
		if (ccw_idx == 3)
			FUNC18(&ch->io_queue);
		/*
		 * Remove our header. It gets added
		 * again on retransmit.
		 */
		FUNC19(skb, LL_HEADER_LENGTH + 2);
	} else if (ccw_idx == 0) {
		struct net_device *dev = ch->netdev;
		struct ctcm_priv *priv = dev->ml_priv;
		priv->stats.tx_packets++;
		priv->stats.tx_bytes += skb->len - LL_HEADER_LENGTH;
	}
done:
	FUNC5(ch->netdev);
	return rc;
}