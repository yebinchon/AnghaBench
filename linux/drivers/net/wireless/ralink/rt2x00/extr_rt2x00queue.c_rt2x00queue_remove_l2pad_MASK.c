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
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 

void FUNC3(struct sk_buff *skb, unsigned int hdr_len)
{
	unsigned int l2pad = (skb->len > hdr_len) ? FUNC0(hdr_len) : 0;

	if (!l2pad)
		return;

	FUNC1(skb->data + l2pad, skb->data, hdr_len);
	FUNC2(skb, l2pad);
}