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
struct np_info {int stid; struct np_info* next; struct cxgbit_np* cnp; } ;
struct cxgbit_np {int dummy; } ;
struct cxgbit_device {int /*<<< orphan*/  np_lock; struct np_info** np_hash_tab; } ;

/* Variables and functions */
 int FUNC0 (struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC1 (struct np_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cxgbit_device *cdev, struct cxgbit_np *cnp)
{
	int stid = -1, bucket = FUNC0(cnp);
	struct np_info *p, **prev = &cdev->np_hash_tab[bucket];

	FUNC2(&cdev->np_lock);
	for (p = *prev; p; prev = &p->next, p = p->next) {
		if (p->cnp == cnp) {
			stid = p->stid;
			*prev = p->next;
			FUNC1(p);
			break;
		}
	}
	FUNC3(&cdev->np_lock);

	return stid;
}