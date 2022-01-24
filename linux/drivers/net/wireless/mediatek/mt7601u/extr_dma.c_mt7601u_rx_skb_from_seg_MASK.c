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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct mt7601u_rxwi {int rxinfo; } ;
struct mt7601u_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MT_RXINFO_L2PAD ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (void*,int) ; 
 int FUNC6 (struct mt7601u_dev*,struct sk_buff*,void*,struct mt7601u_rxwi*) ; 
 int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,void*,int) ; 
 int FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC11(struct mt7601u_dev *dev, struct mt7601u_rxwi *rxwi,
			void *data, u32 seg_len, u32 truesize, struct page *p)
{
	struct sk_buff *skb;
	u32 true_len, hdr_len = 0, copy, frag;

	skb = FUNC0(p ? 128 : seg_len, GFP_ATOMIC);
	if (!skb)
		return NULL;

	true_len = FUNC6(dev, skb, data, rxwi);
	if (!true_len || true_len > seg_len)
		goto bad_frame;

	hdr_len = FUNC5(data, true_len);
	if (!hdr_len)
		goto bad_frame;

	if (rxwi->rxinfo & FUNC1(MT_RXINFO_L2PAD)) {
		FUNC9(skb, data, hdr_len);

		data += hdr_len + 2;
		true_len -= hdr_len;
		hdr_len = 0;
	}

	/* If not doing paged RX allocated skb will always have enough space */
	copy = (true_len <= FUNC10(skb)) ? true_len : hdr_len + 8;
	frag = true_len - copy;

	FUNC9(skb, data, copy);
	data += copy;

	if (frag) {
		FUNC8(skb, 0, p, data - FUNC7(p),
				frag, truesize);
		FUNC4(p);
	}

	return skb;

bad_frame:
	FUNC2(dev->dev, "Error: incorrect frame len:%u hdr:%u\n",
			    true_len, hdr_len);
	FUNC3(skb);
	return NULL;
}