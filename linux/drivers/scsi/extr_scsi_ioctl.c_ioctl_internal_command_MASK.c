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
struct scsi_sense_hdr {int sense_key; int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; } ;
struct scsi_device {int changed; int /*<<< orphan*/  removable; int /*<<< orphan*/  lockable; } ;

/* Variables and functions */
 char ALLOW_MEDIUM_REMOVAL ; 
 int /*<<< orphan*/  DMA_NONE ; 
 scalar_t__ DRIVER_SENSE ; 
#define  ILLEGAL_REQUEST 130 
 int /*<<< orphan*/  KERN_INFO ; 
#define  NOT_READY 129 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  UNIT_ATTENTION 128 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct scsi_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_sense_hdr*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ *,struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC4 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_device*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev, char *cmd,
				  int timeout, int retries)
{
	int result;
	struct scsi_sense_hdr sshdr;

	FUNC0(1, FUNC5(KERN_INFO, sdev,
				      "Trying ioctl with scsi command %d\n", *cmd));

	result = FUNC2(sdev, cmd, DMA_NONE, NULL, 0,
				  &sshdr, timeout, retries, NULL);

	FUNC0(2, FUNC5(KERN_INFO, sdev,
				      "Ioctl returned  0x%x\n", result));

	if (FUNC1(result) == DRIVER_SENSE &&
	    FUNC4(&sshdr)) {
		switch (sshdr.sense_key) {
		case ILLEGAL_REQUEST:
			if (cmd[0] == ALLOW_MEDIUM_REMOVAL)
				sdev->lockable = 0;
			else
				FUNC5(KERN_INFO, sdev,
					    "ioctl_internal_command: "
					    "ILLEGAL REQUEST "
					    "asc=0x%x ascq=0x%x\n",
					    sshdr.asc, sshdr.ascq);
			break;
		case NOT_READY:	/* This happens if there is no disc in drive */
			if (sdev->removable)
				break;
			/* FALLTHROUGH */
		case UNIT_ATTENTION:
			if (sdev->removable) {
				sdev->changed = 1;
				result = 0;	/* This is no longer considered an error */
				break;
			}
			/* FALLTHROUGH -- for non-removable media */
		default:
			FUNC5(KERN_INFO, sdev,
				    "ioctl_internal_command return code = %x\n",
				    result);
			FUNC3(sdev, NULL, &sshdr);
			break;
		}
	}

	FUNC0(2, FUNC5(KERN_INFO, sdev,
				      "IOCTL Releasing command\n"));
	return result;
}