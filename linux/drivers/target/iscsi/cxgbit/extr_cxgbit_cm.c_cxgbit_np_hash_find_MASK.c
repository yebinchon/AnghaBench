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
struct np_info {int stid; struct cxgbit_np* cnp; struct np_info* next; } ;
struct cxgbit_np {int dummy; } ;
struct cxgbit_device {int /*<<< orphan*/  np_lock; struct np_info** np_hash_tab; } ;

/* Variables and functions */
 int FUNC0 (struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct cxgbit_device *cdev, struct cxgbit_np *cnp)
{
	int stid = -1, bucket = FUNC0(cnp);
	struct np_info *p;

	FUNC1(&cdev->np_lock);
	for (p = cdev->np_hash_tab[bucket]; p; p = p->next) {
		if (p->cnp == cnp) {
			stid = p->stid;
			break;
		}
	}
	FUNC2(&cdev->np_lock);

	return stid;
}