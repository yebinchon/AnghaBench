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
struct expander_device {int num_phys; } ;
struct domain_device {struct expander_device ex_dev; } ;

/* Variables and functions */
 int FUNC0 (struct domain_device*,struct domain_device**) ; 
 int FUNC1 (struct domain_device*,int*,int,int) ; 
 int FUNC2 (struct domain_device*,int) ; 

int FUNC3(struct domain_device *port_dev)
{
	int res;
	struct domain_device *dev = NULL;

	res = FUNC0(port_dev, &dev);
	if (res == 0 && dev) {
		struct expander_device *ex = &dev->ex_dev;
		int i = 0, phy_id;

		do {
			phy_id = -1;
			res = FUNC1(dev, &phy_id, i, true);
			if (phy_id == -1)
				break;
			res = FUNC2(dev, phy_id);
			i = phy_id + 1;
		} while (i < ex->num_phys);
	}
	return res;
}