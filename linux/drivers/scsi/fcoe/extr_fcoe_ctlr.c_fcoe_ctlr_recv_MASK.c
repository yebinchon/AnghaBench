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
struct fcoe_ctlr {int /*<<< orphan*/  recv_work; int /*<<< orphan*/  fip_recv_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC3(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
	skb = FUNC2(skb, GFP_ATOMIC);
	if (!skb)
		return;
	FUNC1(&fip->fip_recv_list, skb);
	FUNC0(&fip->recv_work);
}