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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 
 scalar_t__ FUNC5 (struct sk_buff const*) ; 
 int FUNC6 (struct sk_buff const*) ; 

__attribute__((used)) static unsigned int FUNC7(const struct sk_buff *skb)
{
	unsigned int flits, cnt;

	if (FUNC1(skb))
		return FUNC0(skb->len, 8);
	flits = FUNC6(skb) / 8;
	cnt = FUNC3(skb)->nr_frags;
	if (FUNC4(skb) != FUNC5(skb))
		cnt++;
	return flits + FUNC2(cnt);
}