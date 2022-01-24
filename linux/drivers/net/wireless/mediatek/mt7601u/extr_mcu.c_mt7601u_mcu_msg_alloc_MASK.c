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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MT_DMA_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC4(const void *data, int len)
{
	struct sk_buff *skb;

	FUNC0(len % 4); /* if length is not divisible by 4 we need to pad */

	skb = FUNC1(len + MT_DMA_HDR_LEN + 4, GFP_KERNEL);
	if (skb) {
		FUNC3(skb, MT_DMA_HDR_LEN);
		FUNC2(skb, data, len);
	}

	return skb;
}