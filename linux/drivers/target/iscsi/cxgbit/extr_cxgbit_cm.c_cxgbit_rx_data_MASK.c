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
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cxgbit_device {struct cxgb4_lld_info lldi; } ;
struct cpl_rx_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpl_rx_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct cpl_rx_data* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbit_sock*,struct sk_buff*) ; 
 struct cxgbit_sock* FUNC4 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct cxgbit_device *cdev, struct sk_buff *skb)
{
	struct cxgbit_sock *csk;
	struct cpl_rx_data *cpl = FUNC2(skb);
	unsigned int tid = FUNC0(cpl);
	struct cxgb4_lld_info *lldi = &cdev->lldi;
	struct tid_info *t = lldi->tids;

	csk = FUNC4(t, tid);
	if (FUNC6(!csk)) {
		FUNC5("can't find conn. for tid %u.\n", tid);
		goto rel_skb;
	}

	FUNC3(csk, skb);
	return;
rel_skb:
	FUNC1(skb);
}