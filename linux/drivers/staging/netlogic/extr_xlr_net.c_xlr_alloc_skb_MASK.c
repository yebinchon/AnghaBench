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
struct sk_buff {unsigned char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAC_SKB_BACK_PTR_SIZE ; 
 int /*<<< orphan*/  XLR_RX_BUF_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,struct sk_buff**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned char *FUNC3(void)
{
	struct sk_buff *skb;
	int buf_len = sizeof(struct sk_buff *);
	unsigned char *skb_data;

	/* skb->data is cache aligned */
	skb = FUNC0(XLR_RX_BUF_SIZE, GFP_ATOMIC);
	if (!skb)
		return NULL;
	skb_data = skb->data;
	FUNC2(skb, MAC_SKB_BACK_PTR_SIZE);
	FUNC1(skb_data, &skb, buf_len);

	return skb->data;
}