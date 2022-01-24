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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC3(struct sk_buff *skb)
{
	struct sk_buff *nskb;
	int rc;

	nskb = FUNC2(skb, GFP_ATOMIC);
	if (!nskb)
		return -ENOMEM;
	rc = FUNC0(nskb);
	if (rc != 0)
		return rc;
	FUNC1(skb);
	return 0;
}