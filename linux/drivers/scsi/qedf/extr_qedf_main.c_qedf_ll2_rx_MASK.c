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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct qedf_skb_work {int /*<<< orphan*/  work; struct qedf_ctx* qedf; struct sk_buff* skb; } ;
struct qedf_ctx {int /*<<< orphan*/  ll2_recv_wq; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ QEDF_LINK_DOWN ; 
 int /*<<< orphan*/  QEDF_LOG_LL2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct qedf_skb_work* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qedf_ll2_process_skb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *cookie, struct sk_buff *skb,
	u32 arg1, u32 arg2)
{
	struct qedf_ctx *qedf = (struct qedf_ctx *)cookie;
	struct qedf_skb_work *skb_work;

	if (FUNC3(&qedf->link_state) == QEDF_LINK_DOWN) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_LL2,
			  "Dropping frame as link state is down.\n");
		FUNC4(skb);
		return 0;
	}

	skb_work = FUNC5(sizeof(struct qedf_skb_work), GFP_ATOMIC);
	if (!skb_work) {
		FUNC2(&(qedf->dbg_ctx), "Could not allocate skb_work so "
			   "dropping frame.\n");
		FUNC4(skb);
		return 0;
	}

	FUNC0(&skb_work->work, qedf_ll2_process_skb);
	skb_work->skb = skb;
	skb_work->qedf = qedf;
	FUNC6(qedf->ll2_recv_wq, &skb_work->work);

	return 0;
}