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
typedef  int u8 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct pn533 {int /*<<< orphan*/  fragment_skb; int /*<<< orphan*/  tgt_mode; } ;

/* Variables and functions */
 int PN533_CMD_DATAFRAME_MAXLEN ; 
 int PN533_CMD_MI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct pn533*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct pn533 *dev, struct sk_buff *skb)
{
	struct sk_buff *frag;
	int  frag_size;

	do {
		/* Remaining size */
		if (skb->len > PN533_CMD_DATAFRAME_MAXLEN)
			frag_size = PN533_CMD_DATAFRAME_MAXLEN;
		else
			frag_size = skb->len;

		/* Allocate and reserve */
		frag = FUNC1(dev, frag_size);
		if (!frag) {
			FUNC6(&dev->fragment_skb);
			break;
		}

		if (!dev->tgt_mode) {
			/* Reserve the TG/MI byte */
			FUNC8(frag, 1);

			/* MI + TG */
			if (frag_size  == PN533_CMD_DATAFRAME_MAXLEN)
				*(u8 *)FUNC3(frag, sizeof(u8)) =
						(PN533_CMD_MI_MASK | 1);
			else
				*(u8 *)FUNC3(frag, sizeof(u8)) =  1; /* TG */
		}

		FUNC4(frag, skb->data, frag_size);

		/* Reduce the size of incoming buffer */
		FUNC2(skb, frag_size);

		/* Add this to skb_queue */
		FUNC7(&dev->fragment_skb, frag);

	} while (skb->len > 0);

	FUNC0(skb);

	return FUNC5(&dev->fragment_skb);
}