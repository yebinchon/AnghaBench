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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XEN_MC_NONURGENT ; 
 int /*<<< orphan*/  XEN_MC_URGENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcelog_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_mce_chrdev_wait ; 

__attribute__((used)) static void FUNC5(struct work_struct *work)
{
	int err;

	FUNC1(&mcelog_lock);

	/* urgent mc_info */
	err = FUNC0(XEN_MC_URGENT);
	if (err)
		FUNC3("Failed to handle urgent mc_info queue, continue handling nonurgent mc_info queue anyway\n");

	/* nonurgent mc_info */
	err = FUNC0(XEN_MC_NONURGENT);
	if (err)
		FUNC3("Failed to handle nonurgent mc_info queue\n");

	/* wake processes polling /dev/mcelog */
	FUNC4(&xen_mce_chrdev_wait);

	FUNC2(&mcelog_lock);
}