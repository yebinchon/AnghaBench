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
struct scsi_target {struct ipr_sata_port* hostdata; int /*<<< orphan*/  dev; } ;
struct ipr_sata_port {struct ipr_resource_entry* res; struct ata_port* ap; struct ipr_ioa_cfg* ioa_cfg; } ;
struct ipr_resource_entry {struct ipr_sata_port* sata_port; } ;
struct ipr_ioa_cfg {TYPE_1__* host; int /*<<< orphan*/  ata_host; } ;
struct ata_port {struct ipr_sata_port* private_data; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ata_port* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *) ; 
 struct ipr_resource_entry* FUNC2 (struct scsi_target*) ; 
 scalar_t__ FUNC3 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_sata_port*) ; 
 struct ipr_sata_port* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sata_port_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct scsi_target *starget)
{
	struct Scsi_Host *shost = FUNC1(&starget->dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) shost->hostdata;
	struct ipr_sata_port *sata_port;
	struct ata_port *ap;
	struct ipr_resource_entry *res;
	unsigned long lock_flags;

	FUNC6(ioa_cfg->host->host_lock, lock_flags);
	res = FUNC2(starget);
	starget->hostdata = NULL;

	if (res && FUNC3(res)) {
		FUNC7(ioa_cfg->host->host_lock, lock_flags);
		sata_port = FUNC5(sizeof(*sata_port), GFP_KERNEL);
		if (!sata_port)
			return -ENOMEM;

		ap = FUNC0(&ioa_cfg->ata_host, &sata_port_info, shost);
		if (ap) {
			FUNC6(ioa_cfg->host->host_lock, lock_flags);
			sata_port->ioa_cfg = ioa_cfg;
			sata_port->ap = ap;
			sata_port->res = res;

			res->sata_port = sata_port;
			ap->private_data = sata_port;
			starget->hostdata = sata_port;
		} else {
			FUNC4(sata_port);
			return -ENOMEM;
		}
	}
	FUNC7(ioa_cfg->host->host_lock, lock_flags);

	return 0;
}