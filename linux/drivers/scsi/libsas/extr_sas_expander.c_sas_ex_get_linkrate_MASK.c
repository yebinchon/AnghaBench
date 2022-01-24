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
struct sas_port {int dummy; } ;
struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; void* linkrate; int /*<<< orphan*/  phy; int /*<<< orphan*/  attached_sas_addr; struct sas_port* port; } ;
struct domain_device {void* pathways; void* max_linkrate; void* linkrate; void* min_linkrate; int /*<<< orphan*/  sas_addr; struct expander_device ex_dev; } ;

/* Variables and functions */
 scalar_t__ PHY_NOT_PRESENT ; 
 scalar_t__ PHY_VACANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,void*) ; 
 void* FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct domain_device *parent,
				       struct domain_device *child,
				       struct ex_phy *parent_phy)
{
	struct expander_device *parent_ex = &parent->ex_dev;
	struct sas_port *port;
	int i;

	child->pathways = 0;

	port = parent_phy->port;

	for (i = 0; i < parent_ex->num_phys; i++) {
		struct ex_phy *phy = &parent_ex->ex_phy[i];

		if (phy->phy_state == PHY_VACANT ||
		    phy->phy_state == PHY_NOT_PRESENT)
			continue;

		if (FUNC0(phy->attached_sas_addr) ==
		    FUNC0(child->sas_addr)) {

			child->min_linkrate = FUNC2(parent->min_linkrate,
						  phy->linkrate);
			child->max_linkrate = FUNC1(parent->max_linkrate,
						  phy->linkrate);
			child->pathways++;
			FUNC3(port, phy->phy);
		}
	}
	child->linkrate = FUNC2(parent_phy->linkrate, child->max_linkrate);
	child->pathways = FUNC2(child->pathways, parent->pathways);
}