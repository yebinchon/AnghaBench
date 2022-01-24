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
struct expander_device {int /*<<< orphan*/ * ex_phy; int /*<<< orphan*/  num_phys; } ;
struct domain_device {struct expander_device ex_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct domain_device*,int) ; 

__attribute__((used)) static int FUNC3(struct domain_device *dev)
{
	struct expander_device *ex = &dev->ex_dev;
	int res = -ENOMEM;

	ex->ex_phy = FUNC0(ex->num_phys, sizeof(*ex->ex_phy), GFP_KERNEL);
	if (!ex->ex_phy)
		return -ENOMEM;

	res = FUNC2(dev, -1);
	if (res)
		goto out_err;

	return 0;
 out_err:
	FUNC1(ex->ex_phy);
	ex->ex_phy = NULL;
	return res;
}