#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct cxgbit_sock {int /*<<< orphan*/  waitq; TYPE_1__ rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cxgbit_sock *csk, struct sk_buff *skb)
{
	bool wakeup_thread = false;

	FUNC2(&csk->rxq.lock);
	FUNC0(&csk->rxq, skb);
	if (FUNC1(&csk->rxq) == 1)
		wakeup_thread = true;
	FUNC3(&csk->rxq.lock);

	if (wakeup_thread)
		FUNC4(&csk->waitq);
}