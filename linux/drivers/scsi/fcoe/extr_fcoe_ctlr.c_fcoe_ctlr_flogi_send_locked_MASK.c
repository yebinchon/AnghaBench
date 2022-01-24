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
struct sk_buff {scalar_t__ data; } ;
struct fcoe_ctlr {TYPE_1__* sel_fcf; int /*<<< orphan*/  (* send ) (struct fcoe_ctlr*,struct sk_buff*) ;int /*<<< orphan*/  lp; struct sk_buff* flogi_req; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_d_id; } ;
struct TYPE_2__ {int flogi_sent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FIP_DT_FLOGI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct fcoe_ctlr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_ctlr*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct fcoe_ctlr *fip)
{
	struct sk_buff *skb;
	struct sk_buff *skb_orig;
	struct fc_frame_header *fh;
	int error;

	skb_orig = fip->flogi_req;
	if (!skb_orig)
		return -EINVAL;

	/*
	 * Clone and send the FLOGI request.  If clone fails, use original.
	 */
	skb = FUNC3(skb_orig, GFP_ATOMIC);
	if (!skb) {
		skb = skb_orig;
		fip->flogi_req = NULL;
	}
	fh = (struct fc_frame_header *)skb->data;
	error = FUNC0(fip, fip->lp, FIP_DT_FLOGI, skb,
				 FUNC2(fh->fh_d_id));
	if (error) {
		FUNC1(skb);
		return error;
	}
	fip->send(fip, skb);
	fip->sel_fcf->flogi_sent = 1;
	return 0;
}