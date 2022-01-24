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
struct sas_ha_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  eh_active; } ;
struct domain_device {int /*<<< orphan*/  state; TYPE_1__* port; } ;
struct ata_port {struct domain_device* private_data; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_DEV_EH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap)
{
	struct domain_device *dev = ap->private_data;
	struct sas_ha_struct *ha = dev->port->ha;
	unsigned long flags;

	FUNC1(&ha->lock, flags);
	if (!FUNC3(SAS_DEV_EH_PENDING, &dev->state))
		ha->eh_active++;
	FUNC0(ap);
	FUNC2(&ha->lock, flags);
}