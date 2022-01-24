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
struct sas_phy {int /*<<< orphan*/  dev; } ;
struct sas_ha_struct {int /*<<< orphan*/  phy_port_lock; } ;
struct domain_device {struct sas_phy* phy; TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct sas_phy *FUNC4(struct domain_device *dev)
{
	struct sas_ha_struct *ha = dev->port->ha;
	struct sas_phy *phy;
	unsigned long flags;

	/* a published domain device always has a valid phy, it may be
	 * stale, but it is never NULL
	 */
	FUNC0(!dev->phy);

	FUNC2(&ha->phy_port_lock, flags);
	phy = dev->phy;
	FUNC1(&phy->dev);
	FUNC3(&ha->phy_port_lock, flags);

	return phy;
}