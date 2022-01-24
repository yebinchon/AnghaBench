#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct regulator_dev {TYPE_2__ dev; TYPE_1__* constraints; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int* max_spread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,struct device_node*,int*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (struct device_node*,char*,int) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int,int*) ; 

bool FUNC7(struct regulator_dev *rdev)
{
	struct device_node *node = rdev->dev.of_node;
	int n_phandles = FUNC3(rdev);
	struct device_node *c_node;
	int index;
	int i;
	bool ret = true;

	/* iterate over rdev's phandles */
	for (i = 0; i < n_phandles; i++) {
		int max_spread = rdev->constraints->max_spread[i];
		int c_max_spread, c_n_phandles;

		if (max_spread <= 0) {
			FUNC0(&rdev->dev, "max_spread value invalid\n");
			return false;
		}

		c_node = FUNC5(node,
					  "regulator-coupled-with", i);

		if (!c_node)
			ret = false;

		c_n_phandles = FUNC1(c_node,
							  "regulator-coupled-with",
							  NULL);

		if (c_n_phandles != n_phandles) {
			FUNC0(&rdev->dev, "number of coupled reg phandles mismatch\n");
			ret = false;
			goto clean;
		}

		if (!FUNC2(c_node, node, &index)) {
			FUNC0(&rdev->dev, "missing 2-way linking for coupled regulators\n");
			ret = false;
			goto clean;
		}

		if (FUNC6(c_node, "regulator-coupled-max-spread",
					       index, &c_max_spread)) {
			ret = false;
			goto clean;
		}

		if (c_max_spread != max_spread) {
			FUNC0(&rdev->dev,
				"coupled regulators max_spread mismatch\n");
			ret = false;
			goto clean;
		}

clean:
		FUNC4(c_node);
		if (!ret)
			break;
	}

	return ret;
}