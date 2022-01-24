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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct cxgbit_sock {int /*<<< orphan*/  txq; int /*<<< orphan*/  ppodq; int /*<<< orphan*/  write_seq; int /*<<< orphan*/  lock; scalar_t__ lock_owner; TYPE_1__ com; int /*<<< orphan*/  ack_waitq; } ;

/* Variables and functions */
 scalar_t__ CSK_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbit_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbit_sock*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbit_sock*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct cxgbit_sock *csk, struct sk_buff *skb)
{
	int ret = 0;

	FUNC12(csk->ack_waitq, FUNC3(csk));

	if (FUNC11((csk->com.state != CSK_STATE_ESTABLISHED) ||
		     FUNC7(current))) {
		FUNC0(skb);
		FUNC1(&csk->ppodq);
		ret = -1;
		FUNC9(&csk->lock);
		if (csk->lock_owner) {
			FUNC10(&csk->lock);
			goto unlock;
		}
		FUNC10(&csk->lock);
		return ret;
	}

	csk->write_seq += skb->len +
			  FUNC5(skb);

	FUNC8(&csk->ppodq, &csk->txq);
	FUNC2(&csk->txq, skb);
	FUNC4(csk);

unlock:
	FUNC6(csk);
	return ret;
}