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
struct TYPE_4__ {TYPE_1__* cdev; } ;
struct cxgbit_sock {TYPE_2__ com; } ;
struct cxgb4_lld_info {int /*<<< orphan*/  adapter_type; } ;
struct TYPE_3__ {struct cxgb4_lld_info lldi; } ;

/* Variables and functions */
 int SKCBF_RX_LRO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct cxgbit_sock*,struct sk_buff*) ; 
 int FUNC2 (struct cxgbit_sock*,struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct cxgbit_sock *csk, struct sk_buff *skb)
{
	struct cxgb4_lld_info *lldi = &csk->com.cdev->lldi;
	int ret = -1;

	if (FUNC5(FUNC3(skb) & SKCBF_RX_LRO)) {
		if (FUNC4(lldi->adapter_type))
			ret = FUNC2(csk, skb);
		else
			ret = FUNC1(csk, skb);
	}

	FUNC0(skb);
	return ret;
}