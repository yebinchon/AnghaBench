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
struct txentry_desc {int /*<<< orphan*/  iv_len; scalar_t__ iv_offset; } ;
struct skb_frame_desc {int /*<<< orphan*/  iv; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 struct skb_frame_desc* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct sk_buff *skb, struct txentry_desc *txdesc)
{
	struct skb_frame_desc *skbdesc = FUNC0(skb);

	if (FUNC2(!txdesc->iv_len))
		return;

	/* Copy IV/EIV data */
	FUNC1(skbdesc->iv, skb->data + txdesc->iv_offset, txdesc->iv_len);
}