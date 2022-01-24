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
typedef  scalar_t__ u32 ;
struct qm_portal {int dummy; } ;
struct qm_dqrr_entry {int stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct qm_portal*,struct qm_dqrr_entry const*,int /*<<< orphan*/ ) ; 
 struct qm_dqrr_entry* FUNC2 (struct qm_portal*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_portal*) ; 
 int /*<<< orphan*/  FUNC4 (struct qm_portal*) ; 
 scalar_t__ FUNC5 (struct qm_dqrr_entry const*) ; 

__attribute__((used)) static int FUNC6(struct qm_portal *p, u32 fqid, int s,
				      bool wait)
{
	const struct qm_dqrr_entry *dqrr;
	int found = 0;

	do {
		FUNC4(p);
		dqrr = FUNC2(p);
		if (!dqrr)
			FUNC0();
	} while (wait && !dqrr);

	while (dqrr) {
		if (FUNC5(dqrr) == fqid && (dqrr->stat & s))
			found = 1;
		FUNC1(p, dqrr, 0);
		FUNC4(p);
		FUNC3(p);
		dqrr = FUNC2(p);
	}
	return found;
}