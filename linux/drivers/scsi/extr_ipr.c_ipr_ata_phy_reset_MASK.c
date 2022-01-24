#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ipr_sata_port {struct ipr_ioa_cfg* ioa_cfg; struct ipr_resource_entry* res; } ;
struct ipr_resource_entry {void* ata_class; } ;
struct ipr_ioa_cfg {TYPE_4__* host; TYPE_1__* hrrq; scalar_t__ in_reset_reload; int /*<<< orphan*/  reset_wait_q; } ;
struct TYPE_7__ {TYPE_2__* device; } ;
struct ata_port {TYPE_3__ link; struct ipr_sata_port* private_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {void* class; } ;
struct TYPE_5__ {int /*<<< orphan*/  allow_cmds; } ;

/* Variables and functions */
 void* ATA_DEV_NONE ; 
 void* ATA_DEV_UNKNOWN ; 
 int /*<<< orphan*/  ENTER ; 
 size_t IPR_INIT_HRRQ ; 
 int /*<<< orphan*/  LEAVE ; 
 int FUNC0 (struct ipr_ioa_cfg*,struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap)
{
	unsigned long flags;
	struct ipr_sata_port *sata_port = ap->private_data;
	struct ipr_resource_entry *res = sata_port->res;
	struct ipr_ioa_cfg *ioa_cfg = sata_port->ioa_cfg;
	int rc;

	ENTER;
	FUNC1(ioa_cfg->host->host_lock, flags);
	while (ioa_cfg->in_reset_reload) {
		FUNC2(ioa_cfg->host->host_lock, flags);
		FUNC3(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
		FUNC1(ioa_cfg->host->host_lock, flags);
	}

	if (!ioa_cfg->hrrq[IPR_INIT_HRRQ].allow_cmds)
		goto out_unlock;

	rc = FUNC0(ioa_cfg, res);

	if (rc) {
		ap->link.device[0].class = ATA_DEV_NONE;
		goto out_unlock;
	}

	ap->link.device[0].class = res->ata_class;
	if (ap->link.device[0].class == ATA_DEV_UNKNOWN)
		ap->link.device[0].class = ATA_DEV_NONE;

out_unlock:
	FUNC2(ioa_cfg->host->host_lock, flags);
	LEAVE;
}