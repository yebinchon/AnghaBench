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
struct coupling_desc {int n_coupled; int /*<<< orphan*/  n_resolved; struct regulator_dev** coupled_rdevs; struct regulator_coupler* coupler; } ;
struct regulator_dev {struct coupling_desc coupling_desc; } ;
struct regulator_coupler {int dummy; } ;

/* Variables and functions */
 struct regulator_dev* FUNC0 (struct regulator_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static void FUNC5(struct regulator_dev *rdev)
{
	struct regulator_coupler *coupler = rdev->coupling_desc.coupler;
	struct coupling_desc *c_desc = &rdev->coupling_desc;
	int n_coupled = c_desc->n_coupled;
	struct regulator_dev *c_rdev;
	int i;

	for (i = 1; i < n_coupled; i++) {
		/* already resolved */
		if (c_desc->coupled_rdevs[i])
			continue;

		c_rdev = FUNC0(rdev, i - 1);

		if (!c_rdev)
			continue;

		if (c_rdev->coupling_desc.coupler != coupler) {
			FUNC1(rdev, "coupler mismatch with %s\n",
				 FUNC2(c_rdev));
			return;
		}

		FUNC3(c_rdev);

		c_desc->coupled_rdevs[i] = c_rdev;
		c_desc->n_resolved++;

		FUNC4(c_rdev);

		FUNC5(c_rdev);
	}
}