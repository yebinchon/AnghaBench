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
struct regulator_dev {struct regulation_constraints* constraints; } ;
struct regulation_constraints {int min_uV; int max_uV; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, int min_uV,
				  int max_uV, unsigned *selector)
{
	struct regulation_constraints *regu_constraints = rdev->constraints;

	if (!regu_constraints) {
		FUNC0(FUNC1(rdev), "No regulator constraints\n");
		return -EINVAL;
	}

	if (regu_constraints->min_uV == min_uV &&
	    regu_constraints->max_uV == max_uV)
		return 0;

	FUNC0(FUNC1(rdev),
		"Requested min %duV max %duV != constrained min %duV max %duV\n",
		min_uV, max_uV,
		regu_constraints->min_uV, regu_constraints->max_uV);

	return -EINVAL;
}