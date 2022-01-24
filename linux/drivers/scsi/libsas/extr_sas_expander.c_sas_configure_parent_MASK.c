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
typedef  int /*<<< orphan*/  u8 ;
struct expander_device {scalar_t__ conf_route_table; int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ routing_attr; int /*<<< orphan*/  attached_sas_addr; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; struct domain_device* parent; struct expander_device ex_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TABLE_ROUTING ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (struct domain_device*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct domain_device *parent,
				struct domain_device *child,
				u8 *sas_addr, int include)
{
	struct expander_device *ex_parent = &parent->ex_dev;
	int res = 0;
	int i;

	if (parent->parent) {
		res = FUNC3(parent->parent, parent, sas_addr,
					   include);
		if (res)
			return res;
	}

	if (ex_parent->conf_route_table == 0) {
		FUNC1("ex %016llx has self-configuring routing table\n",
			 FUNC0(parent->sas_addr));
		return 0;
	}

	for (i = 0; i < ex_parent->num_phys; i++) {
		struct ex_phy *phy = &ex_parent->ex_phy[i];

		if ((phy->routing_attr == TABLE_ROUTING) &&
		    (FUNC0(phy->attached_sas_addr) ==
		     FUNC0(child->sas_addr))) {
			res = FUNC2(parent, i, sas_addr, include);
			if (res)
				return res;
		}
	}

	return res;
}