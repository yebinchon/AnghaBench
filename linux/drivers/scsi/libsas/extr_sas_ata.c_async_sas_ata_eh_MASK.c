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
struct TYPE_6__ {int /*<<< orphan*/  shost; } ;
struct sas_ha_struct {TYPE_3__ core; } ;
struct TYPE_4__ {struct ata_port* ap; } ;
struct domain_device {TYPE_2__* port; TYPE_1__ sata_dev; } ;
struct ata_port {int dummy; } ;
typedef  int /*<<< orphan*/  async_cookie_t ;
struct TYPE_5__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct domain_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*) ; 

__attribute__((used)) static void FUNC3(void *data, async_cookie_t cookie)
{
	struct domain_device *dev = data;
	struct ata_port *ap = dev->sata_dev.ap;
	struct sas_ha_struct *ha = dev->port->ha;

	FUNC1(KERN_DEBUG, dev, "dev error handler\n");
	FUNC0(ha->core.shost, ap);
	FUNC2(dev);
}