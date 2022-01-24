#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
struct _pcie_device {int dummy; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
typedef  int /*<<< orphan*/  Mpi25SCSIIORequest_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ FUNC0 (struct MPT3SAS_ADAPTER*,struct _pcie_device*,struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct MPT3SAS_ADAPTER *ioc,
	Mpi25SCSIIORequest_t *mpi_request, u16 smid, struct scsi_cmnd *scmd,
	struct _pcie_device *pcie_device)
{
	int sges_left;

	/* Get the SG list pointer and info. */
	sges_left = FUNC3(scmd);
	if (sges_left < 0) {
		FUNC5(KERN_ERR, scmd->device,
			"scsi_dma_map failed: request for %d bytes!\n",
			FUNC2(scmd));
		return 1;
	}

	/* Check if we need to build a native SG list. */
	if (FUNC0(ioc, pcie_device,
				scmd, sges_left) == 0) {
		/* We built a native SG list, just return. */
		goto out;
	}

	/*
	 * Build native NVMe PRP.
	 */
	FUNC1(ioc, scmd, mpi_request,
			smid, sges_left);

	return 0;
out:
	FUNC4(scmd);
	return 1;
}