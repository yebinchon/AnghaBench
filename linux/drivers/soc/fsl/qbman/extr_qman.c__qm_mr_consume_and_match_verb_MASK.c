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
union qm_mr_entry {int verb; } ;
struct qm_portal {int dummy; } ;

/* Variables and functions */
 int QM_MR_VERB_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct qm_portal*) ; 
 union qm_mr_entry* FUNC1 (struct qm_portal*) ; 
 int /*<<< orphan*/  FUNC2 (struct qm_portal*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_portal*) ; 

__attribute__((used)) static int FUNC4(struct qm_portal *p, int v)
{
	const union qm_mr_entry *msg;
	int found = 0;

	FUNC3(p);
	msg = FUNC1(p);
	while (msg) {
		if ((msg->verb & QM_MR_VERB_TYPE_MASK) == v)
			found = 1;
		FUNC2(p);
		FUNC0(p);
		FUNC3(p);
		msg = FUNC1(p);
	}
	return found;
}