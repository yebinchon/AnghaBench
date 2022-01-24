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
struct np_info {unsigned int stid; struct np_info* next; struct cxgbit_np* cnp; } ;
struct cxgbit_np {int dummy; } ;
struct cxgbit_device {int /*<<< orphan*/  np_lock; struct np_info** np_hash_tab; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cxgbit_np*) ; 
 struct np_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct np_info *
FUNC4(struct cxgbit_device *cdev, struct cxgbit_np *cnp,
		   unsigned int stid)
{
	struct np_info *p = FUNC1(sizeof(*p), GFP_KERNEL);

	if (p) {
		int bucket = FUNC0(cnp);

		p->cnp = cnp;
		p->stid = stid;
		FUNC2(&cdev->np_lock);
		p->next = cdev->np_hash_tab[bucket];
		cdev->np_hash_tab[bucket] = p;
		FUNC3(&cdev->np_lock);
	}

	return p;
}