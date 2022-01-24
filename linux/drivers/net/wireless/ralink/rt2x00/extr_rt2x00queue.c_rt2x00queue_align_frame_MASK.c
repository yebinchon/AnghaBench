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
struct sk_buff {unsigned int len; scalar_t__ data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 

void FUNC4(struct sk_buff *skb)
{
	unsigned int frame_length = skb->len;
	unsigned int align = FUNC0(skb, 0);

	if (!align)
		return;

	FUNC2(skb, align);
	FUNC1(skb->data, skb->data + align, frame_length);
	FUNC3(skb, frame_length);
}