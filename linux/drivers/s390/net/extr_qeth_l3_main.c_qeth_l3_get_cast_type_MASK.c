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
struct dst_entry {int dummy; } ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct dst_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	int ipv = FUNC1(skb);
	struct dst_entry *dst;
	int cast_type;

	FUNC3();
	dst = FUNC0(skb, ipv);
	cast_type = FUNC2(skb, dst, ipv);
	FUNC4();

	return cast_type;
}