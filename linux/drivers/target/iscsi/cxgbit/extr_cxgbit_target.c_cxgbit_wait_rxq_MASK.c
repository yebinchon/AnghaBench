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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (struct cxgbit_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbit_sock*,struct sk_buff_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cxgbit_sock *csk)
{
	struct sk_buff *skb;
	struct sk_buff_head rxq;

	FUNC5(&rxq);

	FUNC6(csk->waitq, FUNC3(csk, &rxq));

	if (FUNC4(current))
		goto out;

	while ((skb = FUNC0(&rxq))) {
		if (FUNC2(csk, skb))
			goto out;
	}

	return 0;
out:
	FUNC1(&rxq);
	return -1;
}