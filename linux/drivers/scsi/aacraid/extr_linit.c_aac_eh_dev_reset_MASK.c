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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct scsi_device {int /*<<< orphan*/  lun; struct Scsi_Host* host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct fib {int dummy; } ;
struct aac_hba_map_info {scalar_t__ devtype; int reset_state; } ;
struct aac_dev {struct aac_hba_map_info** hba_map; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  fib_callback ;

/* Variables and functions */
 scalar_t__ AAC_DEVTYPE_NATIVE_RAW ; 
 int /*<<< orphan*/  AAC_DRIVERNAME ; 
 size_t AAC_MAX_BUSES ; 
 size_t AAC_MAX_TARGETS ; 
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct aac_hba_map_info*,struct fib*,int /*<<< orphan*/ ) ; 
 struct fib* FUNC1 (struct aac_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct fib*,int /*<<< orphan*/ ,void*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ aac_tmf_callback ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 size_t FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *cmd)
{
	struct scsi_device * dev = cmd->device;
	struct Scsi_Host * host = dev->host;
	struct aac_dev * aac = (struct aac_dev *)host->hostdata;
	struct aac_hba_map_info *info;
	int count;
	u32 bus, cid;
	struct fib *fib;
	int ret = FAILED;
	int status;
	u8 command;

	bus = FUNC3(FUNC6(cmd));
	cid = FUNC7(cmd);

	if (bus >= AAC_MAX_BUSES || cid >= AAC_MAX_TARGETS)
		return FAILED;

	info = &aac->hba_map[bus][cid];

	if (info->devtype != AAC_DEVTYPE_NATIVE_RAW &&
	    info->reset_state > 0)
		return FAILED;

	FUNC5("%s: Host adapter reset request. SCSI hang ?\n",
	       AAC_DRIVERNAME);

	fib = FUNC1(aac);
	if (!fib)
		return ret;

	/* start a HBA_TMF_LUN_RESET TMF request */
	command = FUNC0(info, fib, dev->lun);

	info->reset_state = 1;

	status = FUNC2(command, fib,
			      (fib_callback) aac_tmf_callback,
			      (void *) info);

	/* Wait up to 15 seconds for completion */
	for (count = 0; count < 15; ++count) {
		if (info->reset_state == 0) {
			ret = info->reset_state == 0 ? SUCCESS : FAILED;
			break;
		}
		FUNC4(1000);
	}

	return ret;
}