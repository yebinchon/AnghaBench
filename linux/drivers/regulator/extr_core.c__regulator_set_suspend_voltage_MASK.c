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
typedef  int /*<<< orphan*/  suspend_state_t ;
struct regulator_state {scalar_t__ min_uV; scalar_t__ max_uV; } ;
struct regulator_dev {int dummy; } ;
struct regulator {struct regulator_dev* rdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*,char*) ; 
 struct regulator_state* FUNC1 (struct regulator_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct regulator*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator *regulator,
					  int min_uV, int max_uV,
					  suspend_state_t state)
{
	struct regulator_dev *rdev = regulator->rdev;
	struct regulator_state *rstate;

	rstate = FUNC1(rdev, state);
	if (rstate == NULL)
		return -EINVAL;

	if (rstate->min_uV == rstate->max_uV) {
		FUNC0(rdev, "The suspend voltage can't be changed!\n");
		return -EPERM;
	}

	return FUNC2(regulator, min_uV, max_uV, state);
}