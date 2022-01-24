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
struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {int /*<<< orphan*/  attached_sas_addr; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; struct expander_device ex_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int const) ; 
 int FUNC2 (struct domain_device*,int const) ; 
 int FUNC3 (struct domain_device*,int const,int,int) ; 

__attribute__((used)) static int FUNC4(struct domain_device *dev, const int phy_id)
{
	struct expander_device *ex = &dev->ex_dev;
	struct ex_phy *changed_phy = &ex->ex_phy[phy_id];
	int res = 0;
	int i;
	bool last = true;	/* is this the last phy of the port */

	FUNC1("ex %016llx phy%02d originated BROADCAST(CHANGE)\n",
		 FUNC0(dev->sas_addr), phy_id);

	if (FUNC0(changed_phy->attached_sas_addr) != 0) {
		for (i = 0; i < ex->num_phys; i++) {
			struct ex_phy *phy = &ex->ex_phy[i];

			if (i == phy_id)
				continue;
			if (FUNC0(phy->attached_sas_addr) ==
			    FUNC0(changed_phy->attached_sas_addr)) {
				last = false;
				break;
			}
		}
		res = FUNC3(dev, phy_id, last, i);
	} else
		res = FUNC2(dev, phy_id);
	return res;
}