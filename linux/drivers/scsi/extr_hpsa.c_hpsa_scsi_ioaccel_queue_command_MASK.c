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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hpsa_scsi_dev_t {scalar_t__ queue_depth; int /*<<< orphan*/  ioaccel_cmds_out; scalar_t__ in_reset; } ;
struct ctlr_info {int transMethod; } ;
struct CommandList {TYPE_2__* scsi_cmd; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  hostdata; } ;

/* Variables and functions */
 int CFGTBL_Trans_io_accel1 ; 
 int IO_ACCEL_INELIGIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ctlr_info*,struct CommandList*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct hpsa_scsi_dev_t*) ; 
 int FUNC3 (struct ctlr_info*,struct CommandList*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct hpsa_scsi_dev_t*) ; 

__attribute__((used)) static int FUNC4(struct ctlr_info *h,
	struct CommandList *c, u32 ioaccel_handle, u8 *cdb, int cdb_len,
	u8 *scsi3addr, struct hpsa_scsi_dev_t *phys_disk)
{
	if (!c->scsi_cmd->device)
		return -1;

	if (!c->scsi_cmd->device->hostdata)
		return -1;

	if (phys_disk->in_reset)
		return -1;

	/* Try to honor the device's queue depth */
	if (FUNC1(&phys_disk->ioaccel_cmds_out) >
					phys_disk->queue_depth) {
		FUNC0(&phys_disk->ioaccel_cmds_out);
		return IO_ACCEL_INELIGIBLE;
	}
	if (h->transMethod & CFGTBL_Trans_io_accel1)
		return FUNC2(h, c, ioaccel_handle,
						cdb, cdb_len, scsi3addr,
						phys_disk);
	else
		return FUNC3(h, c, ioaccel_handle,
						cdb, cdb_len, scsi3addr,
						phys_disk);
}