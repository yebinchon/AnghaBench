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
typedef  int u16 ;
struct scsiio_tracker {int dummy; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct MPT3SAS_ADAPTER {int scsiio_depth; scalar_t__ remove_host; scalar_t__ pci_error_recovery; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int DID_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,struct scsiio_tracker*) ; 
 struct scsi_cmnd* FUNC4 (struct MPT3SAS_ADAPTER*,int) ; 
 struct scsiio_tracker* FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static void
FUNC8(struct MPT3SAS_ADAPTER *ioc)
{
	struct scsi_cmnd *scmd;
	struct scsiio_tracker *st;
	u16 smid;
	int count = 0;

	for (smid = 1; smid <= ioc->scsiio_depth; smid++) {
		scmd = FUNC4(ioc, smid);
		if (!scmd)
			continue;
		count++;
		FUNC0(scmd, false);
		st = FUNC5(scmd);
		FUNC3(ioc, st);
		FUNC6(scmd);
		if (ioc->pci_error_recovery || ioc->remove_host)
			scmd->result = DID_NO_CONNECT << 16;
		else
			scmd->result = DID_RESET << 16;
		scmd->scsi_done(scmd);
	}
	FUNC1(ioc, FUNC2(ioc, "completing %d cmds\n", count));
}