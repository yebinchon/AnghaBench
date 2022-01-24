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
struct sk_buff_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct cxgbit_sock {TYPE_1__ rxq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct cxgbit_sock *csk, struct sk_buff_head *rxq)
{
	FUNC2(&csk->rxq.lock);
	if (FUNC0(&csk->rxq)) {
		FUNC1(&csk->rxq, rxq);
		FUNC3(&csk->rxq.lock);
		return true;
	}
	FUNC3(&csk->rxq.lock);
	return false;
}