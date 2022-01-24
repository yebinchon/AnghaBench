#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * destructor_arg; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ NET_SKB_PAD ; 
 int __GFP_NOWARN ; 
 struct sk_buff* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct sk_buff *FUNC4(unsigned int size)
{
	struct sk_buff *skb =
		FUNC0(size + NET_SKB_PAD + NET_IP_ALIGN,
			  GFP_ATOMIC | __GFP_NOWARN);
	if (FUNC3(skb == NULL))
		return NULL;

	/* Packets passed to netif_rx() must have some headroom. */
	FUNC1(skb, NET_SKB_PAD + NET_IP_ALIGN);

	/* Initialize it here to avoid later surprises */
	FUNC2(skb)->destructor_arg = NULL;

	return skb;
}