#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct scsiio_tracker {int direct_io; } ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
struct _raid_device {int block_exponent; int max_lba; int stripe_sz; int stripe_exponent; scalar_t__ num_pds; int /*<<< orphan*/ * pd_handle; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
typedef  int sector_t ;
struct TYPE_4__ {int /*<<< orphan*/ * CDB32; } ;
struct TYPE_5__ {TYPE_1__ CDB; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_2__ Mpi25SCSIIORequest_t ;

/* Variables and functions */
 scalar_t__ READ_10 ; 
 scalar_t__ READ_16 ; 
 scalar_t__ WRITE_10 ; 
 scalar_t__ WRITE_16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct scsi_cmnd*) ; 
 struct scsiio_tracker* FUNC7 (struct scsi_cmnd*) ; 
 int FUNC8 (int,scalar_t__) ; 

void
FUNC9(struct MPT3SAS_ADAPTER *ioc, struct scsi_cmnd *scmd,
	struct _raid_device *raid_device, Mpi25SCSIIORequest_t *mpi_request)
{
	sector_t v_lba, p_lba, stripe_off, column, io_size;
	u32 stripe_sz, stripe_exp;
	u8 num_pds, cmd = scmd->cmnd[0];
	struct scsiio_tracker *st = FUNC7(scmd);

	if (cmd != READ_10 && cmd != WRITE_10 &&
	    cmd != READ_16 && cmd != WRITE_16)
		return;

	if (cmd == READ_10 || cmd == WRITE_10)
		v_lba = FUNC1(&mpi_request->CDB.CDB32[2]);
	else
		v_lba = FUNC2(&mpi_request->CDB.CDB32[2]);

	io_size = FUNC6(scmd) >> raid_device->block_exponent;

	if (v_lba + io_size - 1 > raid_device->max_lba)
		return;

	stripe_sz = raid_device->stripe_sz;
	stripe_exp = raid_device->stripe_exponent;
	stripe_off = v_lba & (stripe_sz - 1);

	/* Return unless IO falls within a stripe */
	if (stripe_off + io_size > stripe_sz)
		return;

	num_pds = raid_device->num_pds;
	p_lba = v_lba >> stripe_exp;
	column = FUNC8(p_lba, num_pds);
	p_lba = (p_lba << stripe_exp) + stripe_off;
	mpi_request->DevHandle = FUNC0(raid_device->pd_handle[column]);

	if (cmd == READ_10 || cmd == WRITE_10)
		FUNC4(FUNC3(p_lba),
				   &mpi_request->CDB.CDB32[2]);
	else
		FUNC5(p_lba, &mpi_request->CDB.CDB32[2]);

	st->direct_io = 1;
}