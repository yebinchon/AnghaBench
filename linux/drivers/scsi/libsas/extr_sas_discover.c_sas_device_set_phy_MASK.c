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
struct sas_port {int dummy; } ;
struct sas_phy {int dummy; } ;
struct sas_ha_struct {int /*<<< orphan*/  phy_port_lock; } ;
struct domain_device {struct sas_phy* phy; TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 struct sas_phy* FUNC0 (struct sas_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct domain_device *dev, struct sas_port *port)
{
	struct sas_ha_struct *ha;
	struct sas_phy *new_phy;

	if (!dev)
		return;

	ha = dev->port->ha;
	new_phy = FUNC0(port);

	/* pin and record last seen phy */
	FUNC2(&ha->phy_port_lock);
	if (new_phy) {
		FUNC1(dev->phy);
		dev->phy = new_phy;
	}
	FUNC3(&ha->phy_port_lock);
}