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
typedef  scalar_t__ u64 ;
struct scsi_device {scalar_t__ sector_size; } ;
struct scsi_cmnd {int /*<<< orphan*/  sense_buffer; struct scsi_device* device; struct request* request; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct scsi_device*,scalar_t__) ; 
 unsigned int FUNC2 (struct scsi_device*,scalar_t__) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC8(struct scsi_cmnd *scmd)
{
	struct request *req = scmd->request;
	struct scsi_device *sdev = scmd->device;
	unsigned int transferred, good_bytes;
	u64 start_lba, end_lba, bad_lba;

	/*
	 * Some commands have a payload smaller than the device logical
	 * block size (e.g. INQUIRY on a 4K disk).
	 */
	if (FUNC4(scmd) <= sdev->sector_size)
		return 0;

	/* Check if we have a 'bad_lba' information */
	if (!FUNC6(scmd->sense_buffer,
				     SCSI_SENSE_BUFFERSIZE,
				     &bad_lba))
		return 0;

	/*
	 * If the bad lba was reported incorrectly, we have no idea where
	 * the error is.
	 */
	start_lba = FUNC7(sdev, FUNC0(req));
	end_lba = start_lba + FUNC1(sdev, FUNC4(scmd));
	if (bad_lba < start_lba || bad_lba >= end_lba)
		return 0;

	/*
	 * resid is optional but mostly filled in.  When it's unused,
	 * its value is zero, so we assume the whole buffer transferred
	 */
	transferred = FUNC4(scmd) - FUNC5(scmd);

	/* This computation should always be done in terms of the
	 * resolution of the device's medium.
	 */
	good_bytes = FUNC2(sdev, bad_lba - start_lba);

	return FUNC3(good_bytes, transferred);
}