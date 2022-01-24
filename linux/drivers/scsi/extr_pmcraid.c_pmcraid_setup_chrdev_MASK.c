#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct pmcraid_instance {TYPE_1__ cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PMCRAID_DEVFILE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pmcraid_class ; 
 int /*<<< orphan*/  pmcraid_fops ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  pmcraid_major ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct pmcraid_instance *pinstance)
{
	int minor;
	int error;

	minor = FUNC4();
	FUNC2(&pinstance->cdev, &pmcraid_fops);
	pinstance->cdev.owner = THIS_MODULE;

	error = FUNC1(&pinstance->cdev, FUNC0(pmcraid_major, minor), 1);

	if (error)
		FUNC5(minor);
	else
		FUNC3(pmcraid_class, NULL, FUNC0(pmcraid_major, minor),
			      NULL, "%s%u", PMCRAID_DEVFILE, minor);
	return error;
}