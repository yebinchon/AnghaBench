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
struct coupling_desc {unsigned int n_coupled; struct regulator_dev** coupled_rdevs; int /*<<< orphan*/  n_resolved; struct regulator_coupler* coupler; } ;
struct regulator_dev {struct coupling_desc coupling_desc; } ;
struct regulator_coupler {int (* detach_regulator ) (struct regulator_coupler*,struct regulator_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regulator_dev**) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_coupler*,struct regulator_dev*) ; 

__attribute__((used)) static void FUNC5(struct regulator_dev *rdev)
{
	struct regulator_coupler *coupler = rdev->coupling_desc.coupler;
	struct coupling_desc *__c_desc, *c_desc = &rdev->coupling_desc;
	struct regulator_dev *__c_rdev, *c_rdev;
	unsigned int __n_coupled, n_coupled;
	int i, k;
	int err;

	n_coupled = c_desc->n_coupled;

	for (i = 1; i < n_coupled; i++) {
		c_rdev = c_desc->coupled_rdevs[i];

		if (!c_rdev)
			continue;

		FUNC2(c_rdev);

		__c_desc = &c_rdev->coupling_desc;
		__n_coupled = __c_desc->n_coupled;

		for (k = 1; k < __n_coupled; k++) {
			__c_rdev = __c_desc->coupled_rdevs[k];

			if (__c_rdev == rdev) {
				__c_desc->coupled_rdevs[k] = NULL;
				__c_desc->n_resolved--;
				break;
			}
		}

		FUNC3(c_rdev);

		c_desc->coupled_rdevs[i] = NULL;
		c_desc->n_resolved--;
	}

	if (coupler && coupler->detach_regulator) {
		err = coupler->detach_regulator(coupler, rdev);
		if (err)
			FUNC1(rdev, "failed to detach from coupler: %d\n",
				 err);
	}

	FUNC0(rdev->coupling_desc.coupled_rdevs);
	rdev->coupling_desc.coupled_rdevs = NULL;
}