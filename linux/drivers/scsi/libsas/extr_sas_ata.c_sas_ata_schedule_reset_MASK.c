#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct ata_port* ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;
struct ata_eh_info {int /*<<< orphan*/  action; int /*<<< orphan*/  err_mask; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {int /*<<< orphan*/  lock; TYPE_2__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC4(struct domain_device *dev)
{
	struct ata_eh_info *ehi;
	struct ata_port *ap;
	unsigned long flags;

	if (!FUNC1(dev))
		return;

	ap = dev->sata_dev.ap;
	ehi = &ap->link.eh_info;

	FUNC2(ap->lock, flags);
	ehi->err_mask |= AC_ERR_TIMEOUT;
	ehi->action |= ATA_EH_RESET;
	FUNC0(ap);
	FUNC3(ap->lock, flags);
}