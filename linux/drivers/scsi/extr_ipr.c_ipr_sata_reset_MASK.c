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
struct ipr_sata_port {struct ipr_resource_entry* res; struct ipr_ioa_cfg* ioa_cfg; } ;
struct ipr_resource_entry {unsigned int ata_class; } ;
struct ipr_ioa_cfg {TYPE_2__* host; scalar_t__ in_reset_reload; int /*<<< orphan*/  reset_wait_q; } ;
struct ata_link {TYPE_1__* ap; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {struct ipr_sata_port* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int ENXIO ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_ABBREV ; 
 int /*<<< orphan*/  LEAVE ; 
 int SUCCESS ; 
 int FUNC0 (struct ipr_ioa_cfg*,struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_match_res ; 
 int FUNC2 (struct ipr_ioa_cfg*,struct ipr_resource_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ata_link *link, unsigned int *classes,
				unsigned long deadline)
{
	struct ipr_sata_port *sata_port = link->ap->private_data;
	struct ipr_ioa_cfg *ioa_cfg = sata_port->ioa_cfg;
	struct ipr_resource_entry *res;
	unsigned long lock_flags = 0;
	int rc = -ENXIO, ret;

	ENTER;
	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	while (ioa_cfg->in_reset_reload) {
		FUNC4(ioa_cfg->host->host_lock, lock_flags);
		FUNC5(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
		FUNC3(ioa_cfg->host->host_lock, lock_flags);
	}

	res = sata_port->res;
	if (res) {
		rc = FUNC0(ioa_cfg, res);
		*classes = res->ata_class;
		FUNC4(ioa_cfg->host->host_lock, lock_flags);

		ret = FUNC2(ioa_cfg, res, ipr_match_res);
		if (ret != SUCCESS) {
			FUNC3(ioa_cfg->host->host_lock, lock_flags);
			FUNC1(ioa_cfg, IPR_SHUTDOWN_ABBREV);
			FUNC4(ioa_cfg->host->host_lock, lock_flags);

			FUNC5(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
		}
	} else
		FUNC4(ioa_cfg->host->host_lock, lock_flags);

	LEAVE;
	return rc;
}