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
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/ * bus; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  balloon_groups ; 
 int /*<<< orphan*/  balloon_subsys ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int error;

	error = FUNC2(&balloon_subsys, NULL);
	if (error)
		return error;

	dev->id = 0;
	dev->bus = &balloon_subsys;
	dev->groups = balloon_groups;

	error = FUNC1(dev);
	if (error) {
		FUNC0(&balloon_subsys);
		return error;
	}

	return 0;
}