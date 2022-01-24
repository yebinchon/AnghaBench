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
struct of_changeset {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct of_changeset*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_mutex ; 

int FUNC3(struct of_changeset *ocs)
{
	int ret;

	FUNC1(&of_mutex);
	ret = FUNC0(ocs);
	FUNC2(&of_mutex);

	return ret;
}