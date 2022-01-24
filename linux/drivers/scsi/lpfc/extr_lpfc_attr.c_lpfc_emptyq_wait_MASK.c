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
struct lpfc_hba {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct lpfc_hba *phba, struct list_head *q, spinlock_t *lock)
{
	int cnt = 0;

	FUNC3(lock);
	while (!FUNC0(q)) {
		FUNC4(lock);
		FUNC2(20);
		if (cnt++ > 250) {  /* 5 secs */
			FUNC1(phba, KERN_WARNING, LOG_INIT,
					"0466 %s %s\n",
					"Outstanding IO when ",
					"bringing Adapter offline\n");
				return 0;
		}
		FUNC3(lock);
	}
	FUNC4(lock);
	return 1;
}