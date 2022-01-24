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
typedef  size_t u8 ;
struct usb_device {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct mt7601u_tx_queue {int entries; int used; size_t end; struct mt7601u_dma_buf_tx* e; } ;
struct mt7601u_dma_buf_tx {int /*<<< orphan*/  urb; struct sk_buff* skb; } ;
struct mt7601u_dev {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; struct mt7601u_tx_queue* tx_q; int /*<<< orphan*/ * out_eps; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MT7601U_STATE_REMOVED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt7601u_complete_tx ; 
 struct usb_device* FUNC3 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct usb_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mt7601u_tx_queue*) ; 
 unsigned int FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mt7601u_dev *dev,
				 struct sk_buff *skb, u8 ep)
{
	struct usb_device *usb_dev = FUNC3(dev);
	unsigned snd_pipe = FUNC9(usb_dev, dev->out_eps[ep]);
	struct mt7601u_dma_buf_tx *e;
	struct mt7601u_tx_queue *q = &dev->tx_q[ep];
	unsigned long flags;
	int ret;

	FUNC6(&dev->tx_lock, flags);

	if (FUNC0(q->entries <= q->used)) {
		ret = -ENOSPC;
		goto out;
	}

	e = &q->e[q->end];
	e->skb = skb;
	FUNC8(e->urb, usb_dev, snd_pipe, skb->data, skb->len,
			  mt7601u_complete_tx, q);
	ret = FUNC10(e->urb, GFP_ATOMIC);
	if (ret) {
		/* Special-handle ENODEV from TX urb submission because it will
		 * often be the first ENODEV we see after device is removed.
		 */
		if (ret == -ENODEV)
			FUNC4(MT7601U_STATE_REMOVED, &dev->state);
		else
			FUNC1(dev->dev, "Error: TX urb submit failed:%d\n",
				ret);
		goto out;
	}

	q->end = (q->end + 1) % q->entries;
	q->used++;

	if (q->used >= q->entries)
		FUNC2(dev->hw, FUNC5(skb));
out:
	FUNC7(&dev->tx_lock, flags);

	return ret;
}