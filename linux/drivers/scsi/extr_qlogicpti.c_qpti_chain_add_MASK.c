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
struct qlogicpti {struct qlogicpti* next; } ;

/* Variables and functions */
 struct qlogicpti* qptichain ; 
 int /*<<< orphan*/  qptichain_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qlogicpti *qpti)
{
	FUNC0(&qptichain_lock);
	if (qptichain != NULL) {
		struct qlogicpti *qlink = qptichain;

		while(qlink->next)
			qlink = qlink->next;
		qlink->next = qpti;
	} else {
		qptichain = qpti;
	}
	qpti->next = NULL;
	FUNC1(&qptichain_lock);
}