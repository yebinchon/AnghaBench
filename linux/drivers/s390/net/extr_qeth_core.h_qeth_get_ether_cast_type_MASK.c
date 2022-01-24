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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * h_dest; } ;

/* Variables and functions */
 int RTN_BROADCAST ; 
 int RTN_MULTICAST ; 
 int RTN_UNICAST ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct sk_buff *skb)
{
	u8 *addr = FUNC0(skb)->h_dest;

	if (FUNC2(addr))
		return FUNC1(addr) ? RTN_BROADCAST :
						       RTN_MULTICAST;
	return RTN_UNICAST;
}