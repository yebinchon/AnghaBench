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
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_disk {unsigned long long capacity; int physical_block_size; unsigned char rc_basis; int lbpme; int lbprz; scalar_t__ first_scan; } ;
struct scsi_device {int /*<<< orphan*/  request_queue; scalar_t__ no_read_capacity_16; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int RC16_LEN ; 
 int READ_CAPACITY_RETRIES_ON_RESET ; 
 unsigned char SAI_READ_CAPACITY_16 ; 
 int /*<<< orphan*/  SD_LBP_WS16 ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 unsigned char SERVICE_ACTION_IN_16 ; 
 scalar_t__ UNIT_ATTENTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 unsigned long long FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_disk*,struct scsi_device*,struct scsi_sense_hdr*,int,int) ; 
 int FUNC6 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,unsigned char*,int,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_disk*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct scsi_disk*,char*,unsigned int) ; 
 scalar_t__ FUNC11 (struct scsi_disk*,unsigned char*) ; 

__attribute__((used)) static int FUNC12(struct scsi_disk *sdkp, struct scsi_device *sdp,
						unsigned char *buffer)
{
	unsigned char cmd[16];
	struct scsi_sense_hdr sshdr;
	int sense_valid = 0;
	int the_result;
	int retries = 3, reset_retries = READ_CAPACITY_RETRIES_ON_RESET;
	unsigned int alignment;
	unsigned long long lba;
	unsigned sector_size;

	if (sdp->no_read_capacity_16)
		return -EINVAL;

	do {
		FUNC4(cmd, 0, 16);
		cmd[0] = SERVICE_ACTION_IN_16;
		cmd[1] = SAI_READ_CAPACITY_16;
		cmd[13] = RC16_LEN;
		FUNC4(buffer, 0, RC16_LEN);

		the_result = FUNC6(sdp, cmd, DMA_FROM_DEVICE,
					buffer, RC16_LEN, &sshdr,
					SD_TIMEOUT, SD_MAX_RETRIES, NULL);

		if (FUNC3(sdkp, &sshdr))
			return -ENODEV;

		if (the_result) {
			sense_valid = FUNC7(&sshdr);
			if (sense_valid &&
			    sshdr.sense_key == ILLEGAL_REQUEST &&
			    (sshdr.asc == 0x20 || sshdr.asc == 0x24) &&
			    sshdr.ascq == 0x00)
				/* Invalid Command Operation Code or
				 * Invalid Field in CDB, just retry
				 * silently with RC10 */
				return -EINVAL;
			if (sense_valid &&
			    sshdr.sense_key == UNIT_ATTENTION &&
			    sshdr.asc == 0x29 && sshdr.ascq == 0x00)
				/* Device reset might occur several times,
				 * give it one more chance */
				if (--reset_retries > 0)
					continue;
		}
		retries--;

	} while (the_result && retries);

	if (the_result) {
		FUNC9(sdkp, "Read Capacity(16) failed", the_result);
		FUNC5(sdkp, sdp, &sshdr, sense_valid, the_result);
		return -EINVAL;
	}

	sector_size = FUNC1(&buffer[8]);
	lba = FUNC2(&buffer[0]);

	if (FUNC11(sdkp, buffer) < 0) {
		sdkp->capacity = 0;
		return -ENODEV;
	}

	/* Logical blocks per physical block exponent */
	sdkp->physical_block_size = (1 << (buffer[13] & 0xf)) * sector_size;

	/* RC basis */
	sdkp->rc_basis = (buffer[12] >> 4) & 0x3;

	/* Lowest aligned logical block */
	alignment = ((buffer[14] & 0x3f) << 8 | buffer[15]) * sector_size;
	FUNC0(sdp->request_queue, alignment);
	if (alignment && sdkp->first_scan)
		FUNC10(KERN_NOTICE, sdkp,
			  "physical block alignment offset: %u\n", alignment);

	if (buffer[14] & 0x80) { /* LBPME */
		sdkp->lbpme = 1;

		if (buffer[14] & 0x40) /* LBPRZ */
			sdkp->lbprz = 1;

		FUNC8(sdkp, SD_LBP_WS16);
	}

	sdkp->capacity = lba + 1;
	return sector_size;
}