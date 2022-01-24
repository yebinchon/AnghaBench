#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device_node* of_node; } ;
struct regulator_dev {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

int FUNC1(struct regulator_dev *rdev)
{
	struct device_node *node = rdev->dev.of_node;
	int n_phandles;

	n_phandles = FUNC0(node,
						"regulator-coupled-with",
						NULL);

	return (n_phandles > 0) ? n_phandles : 0;
}