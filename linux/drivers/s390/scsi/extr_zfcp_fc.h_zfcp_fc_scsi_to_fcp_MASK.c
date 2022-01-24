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
typedef  int u32 ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_1__* device; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; } ;
struct fcp_cmnd {void* fc_dl; int /*<<< orphan*/  fc_cdb; int /*<<< orphan*/  fc_flags; int /*<<< orphan*/  fc_pri_ta; int /*<<< orphan*/  fc_lun; } ;
struct TYPE_2__ {int sector_size; int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FCP_CFL_RDDATA ; 
 int /*<<< orphan*/  FCP_CFL_WRDATA ; 
 int /*<<< orphan*/  FCP_PTA_SIMPLE ; 
 scalar_t__ SCSI_PROT_DIF_TYPE1 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static inline
void FUNC5(struct fcp_cmnd *fcp, struct scsi_cmnd *scsi)
{
	u32 datalen;

	FUNC1(scsi->device->lun, (struct scsi_lun *) &fcp->fc_lun);

	fcp->fc_pri_ta = FCP_PTA_SIMPLE;

	if (scsi->sc_data_direction == DMA_FROM_DEVICE)
		fcp->fc_flags |= FCP_CFL_RDDATA;
	if (scsi->sc_data_direction == DMA_TO_DEVICE)
		fcp->fc_flags |= FCP_CFL_WRDATA;

	FUNC2(fcp->fc_cdb, scsi->cmnd, scsi->cmd_len);

	datalen = FUNC3(scsi);
	fcp->fc_dl = FUNC0(datalen);

	if (FUNC4(scsi) == SCSI_PROT_DIF_TYPE1) {
		datalen += datalen / scsi->device->sector_size * 8;
		fcp->fc_dl = FUNC0(datalen);
	}
}