#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct neighbour {int type; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int RTN_ANYCAST ; 
 int RTN_BROADCAST ; 
 int RTN_MULTICAST ; 
 int RTN_UNICAST ; 
 struct neighbour* FUNC0 (struct dst_entry*,struct sk_buff*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct neighbour*) ; 
 int FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct dst_entry *dst,
				     int ipv)
{
	struct neighbour *n = NULL;

	if (dst)
		n = FUNC0(dst, skb);

	if (n) {
		int cast_type = n->type;

		FUNC6(n);
		if ((cast_type == RTN_BROADCAST) ||
		    (cast_type == RTN_MULTICAST) ||
		    (cast_type == RTN_ANYCAST))
			return cast_type;
		return RTN_UNICAST;
	}

	/* no neighbour (eg AF_PACKET), fall back to target's IP address ... */
	switch (ipv) {
	case 4:
		if (FUNC2(FUNC1(skb)->daddr))
			return RTN_BROADCAST;
		return FUNC3(FUNC1(skb)->daddr) ?
				RTN_MULTICAST : RTN_UNICAST;
	case 6:
		return FUNC4(&FUNC5(skb)->daddr) ?
				RTN_MULTICAST : RTN_UNICAST;
	default:
		/* ... and MAC address */
		return FUNC7(skb);
	}
}