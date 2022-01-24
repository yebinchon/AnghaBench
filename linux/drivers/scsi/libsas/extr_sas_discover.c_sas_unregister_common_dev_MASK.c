#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sas_ha_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  eh_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  eh_list_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  ap; } ;
struct domain_device {scalar_t__ dev_type; TYPE_3__ ssp_dev; TYPE_2__ sata_dev; int /*<<< orphan*/  dev_list_node; int /*<<< orphan*/  siblings; TYPE_1__* port; int /*<<< orphan*/  parent; } ;
struct asd_sas_port {int /*<<< orphan*/  dev_list_lock; struct sas_ha_struct* ha; } ;
struct TYPE_4__ {int /*<<< orphan*/ * port_dev; } ;

/* Variables and functions */
 scalar_t__ SAS_END_DEVICE ; 
 scalar_t__ FUNC0 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct asd_sas_port *port, struct domain_device *dev)
{
	struct sas_ha_struct *ha = port->ha;

	FUNC4(dev);
	if (!dev->parent)
		dev->port->port_dev = NULL;
	else
		FUNC1(&dev->siblings);

	FUNC6(&port->dev_list_lock);
	FUNC1(&dev->dev_list_node);
	if (FUNC0(dev))
		FUNC3(dev->sata_dev.ap);
	FUNC7(&port->dev_list_lock);

	FUNC6(&ha->lock);
	if (dev->dev_type == SAS_END_DEVICE &&
	    !FUNC2(&dev->ssp_dev.eh_list_node)) {
		FUNC1(&dev->ssp_dev.eh_list_node);
		ha->eh_active--;
	}
	FUNC7(&ha->lock);

	FUNC5(dev);
}