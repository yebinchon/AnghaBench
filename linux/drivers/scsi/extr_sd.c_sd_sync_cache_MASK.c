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
struct scsi_sense_hdr {int asc; int ascq; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {TYPE_1__* request_queue; } ;
struct TYPE_2__ {int rq_timeout; } ;

/* Variables and functions */
#define  DID_BAD_TARGET 133 
#define  DID_BUS_BUSY 132 
#define  DID_IMM_RETRY 131 
#define  DID_NO_CONNECT 130 
#define  DID_REQUEUE 129 
#define  DID_SOFT_ERROR 128 
 int /*<<< orphan*/  DMA_NONE ; 
 scalar_t__ DRIVER_SENSE ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  RQF_PM ; 
 int SD_FLUSH_TIMEOUT_MULTIPLIER ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 unsigned char SYNCHRONIZE_CACHE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int FUNC3 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct scsi_sense_hdr*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_disk*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_disk*,struct scsi_sense_hdr*) ; 

__attribute__((used)) static int FUNC7(struct scsi_disk *sdkp, struct scsi_sense_hdr *sshdr)
{
	int retries, res;
	struct scsi_device *sdp = sdkp->device;
	const int timeout = sdp->request_queue->rq_timeout
		* SD_FLUSH_TIMEOUT_MULTIPLIER;
	struct scsi_sense_hdr my_sshdr;

	if (!FUNC2(sdp))
		return -ENODEV;

	/* caller might not be interested in sense, but we need it */
	if (!sshdr)
		sshdr = &my_sshdr;

	for (retries = 3; retries > 0; --retries) {
		unsigned char cmd[10] = { 0 };

		cmd[0] = SYNCHRONIZE_CACHE;
		/*
		 * Leave the rest of the command zero to indicate
		 * flush everything.
		 */
		res = FUNC3(sdp, cmd, DMA_NONE, NULL, 0, NULL, sshdr,
				timeout, SD_MAX_RETRIES, 0, RQF_PM, NULL);
		if (res == 0)
			break;
	}

	if (res) {
		FUNC5(sdkp, "Synchronize Cache(10) failed", res);

		if (FUNC0(res) == DRIVER_SENSE)
			FUNC6(sdkp, sshdr);

		/* we need to evaluate the error return  */
		if (FUNC4(sshdr) &&
			(sshdr->asc == 0x3a ||	/* medium not present */
			 sshdr->asc == 0x20 ||	/* invalid command */
			 (sshdr->asc == 0x74 && sshdr->ascq == 0x71)))	/* drive is password locked */
				/* this is no error here */
				return 0;

		switch (FUNC1(res)) {
		/* ignore errors due to racing a disconnection */
		case DID_BAD_TARGET:
		case DID_NO_CONNECT:
			return 0;
		/* signal the upper layer it might try again */
		case DID_BUS_BUSY:
		case DID_IMM_RETRY:
		case DID_REQUEUE:
		case DID_SOFT_ERROR:
			return -EBUSY;
		default:
			return -EIO;
		}
	}
	return 0;
}