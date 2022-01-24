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
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_rx_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpl_rx_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct cxgb4_lld_info* FUNC2 (struct cxgbi_device*) ; 
 struct cxgbi_sock* FUNC3 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_rx_data *cpl = (struct cpl_rx_data *)skb->data;
	unsigned int tid = FUNC0(cpl);
	struct cxgb4_lld_info *lldi = FUNC2(cdev);
	struct tid_info *t = lldi->tids;

	csk = FUNC3(t, tid);
	if (!csk) {
		FUNC4("can't find connection for tid %u.\n", tid);
	} else {
		/* not expecting this, reset the connection. */
		FUNC4("csk 0x%p, tid %u, rcv cpl_rx_data.\n", csk, tid);
		FUNC6(&csk->lock);
		FUNC5(csk);
		FUNC7(&csk->lock);
	}
	FUNC1(skb);
}