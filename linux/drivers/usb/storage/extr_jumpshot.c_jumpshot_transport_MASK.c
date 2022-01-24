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
typedef  int u32 ;
struct us_data {unsigned char* iobuf; scalar_t__ extra; int /*<<< orphan*/  extra_destructor; } ;
struct scsi_cmnd {scalar_t__* cmnd; int /*<<< orphan*/  result; } ;
struct jumpshot_info {int ssize; unsigned long sectors; unsigned char sense_key; unsigned char sense_asc; unsigned char sense_ascq; } ;
typedef  int /*<<< orphan*/  inquiry_response ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ALLOW_MEDIUM_REMOVAL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ INQUIRY ; 
 scalar_t__ MODE_SELECT_10 ; 
 scalar_t__ MODE_SENSE ; 
 scalar_t__ MODE_SENSE_10 ; 
 unsigned char NO_SENSE ; 
 scalar_t__ READ_10 ; 
 scalar_t__ READ_12 ; 
 scalar_t__ READ_CAPACITY ; 
 scalar_t__ REQUEST_SENSE ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 scalar_t__ START_STOP ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ TEST_UNIT_READY ; 
 unsigned char UNIT_ATTENTION ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 scalar_t__ WRITE_10 ; 
 scalar_t__ WRITE_12 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,unsigned char*,int) ; 
 int FUNC2 (struct us_data*) ; 
 int FUNC3 (struct us_data*,struct scsi_cmnd*,int) ; 
 int FUNC4 (struct us_data*,struct jumpshot_info*) ; 
 int /*<<< orphan*/  jumpshot_info_destructor ; 
 int FUNC5 (struct us_data*,struct jumpshot_info*,unsigned long,unsigned long) ; 
 int FUNC6 (struct us_data*,struct jumpshot_info*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct us_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *srb, struct us_data *us)
{
	struct jumpshot_info *info;
	int rc;
	unsigned long block, blocks;
	unsigned char *ptr = us->iobuf;
	static unsigned char inquiry_response[8] = {
		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
	};

	if (!us->extra) {
		us->extra = FUNC7(sizeof(struct jumpshot_info), GFP_NOIO);
		if (!us->extra)
			return USB_STOR_TRANSPORT_ERROR;

		us->extra_destructor = jumpshot_info_destructor;
	}

	info = (struct jumpshot_info *) (us->extra);

	if (srb->cmnd[0] == INQUIRY) {
		FUNC10(us, "INQUIRY - Returning bogus response\n");
		FUNC8(ptr, inquiry_response, sizeof(inquiry_response));
		FUNC1(us, ptr, 36);
		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == READ_CAPACITY) {
		info->ssize = 0x200;  // hard coded 512 byte sectors as per ATA spec

		rc = FUNC2(us);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		rc = FUNC4(us, info);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		FUNC10(us, "READ_CAPACITY:  %ld sectors, %ld bytes per sector\n",
			     info->sectors, info->ssize);

		// build the reply
		//
		((__be32 *) ptr)[0] = FUNC0(info->sectors - 1);
		((__be32 *) ptr)[1] = FUNC0(info->ssize);
		FUNC11(ptr, 8, srb);

		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == MODE_SELECT_10) {
		FUNC10(us, "Gah! MODE_SELECT_10\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	if (srb->cmnd[0] == READ_10) {
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));

		FUNC10(us, "READ_10: read block 0x%04lx  count %ld\n",
			     block, blocks);
		return FUNC5(us, info, block, blocks);
	}

	if (srb->cmnd[0] == READ_12) {
		// I don't think we'll ever see a READ_12 but support it anyway...
		//
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
			 ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));

		FUNC10(us, "READ_12: read block 0x%04lx  count %ld\n",
			     block, blocks);
		return FUNC5(us, info, block, blocks);
	}

	if (srb->cmnd[0] == WRITE_10) {
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));

		FUNC10(us, "WRITE_10: write block 0x%04lx  count %ld\n",
			     block, blocks);
		return FUNC6(us, info, block, blocks);
	}

	if (srb->cmnd[0] == WRITE_12) {
		// I don't think we'll ever see a WRITE_12 but support it anyway...
		//
		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));

		blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
			 ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));

		FUNC10(us, "WRITE_12: write block 0x%04lx  count %ld\n",
			     block, blocks);
		return FUNC6(us, info, block, blocks);
	}


	if (srb->cmnd[0] == TEST_UNIT_READY) {
		FUNC10(us, "TEST_UNIT_READY\n");
		return FUNC2(us);
	}

	if (srb->cmnd[0] == REQUEST_SENSE) {
		FUNC10(us, "REQUEST_SENSE\n");

		FUNC9(ptr, 0, 18);
		ptr[0] = 0xF0;
		ptr[2] = info->sense_key;
		ptr[7] = 11;
		ptr[12] = info->sense_asc;
		ptr[13] = info->sense_ascq;
		FUNC11(ptr, 18, srb);

		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == MODE_SENSE) {
		FUNC10(us, "MODE_SENSE_6 detected\n");
		return FUNC3(us, srb, 1);
	}

	if (srb->cmnd[0] == MODE_SENSE_10) {
		FUNC10(us, "MODE_SENSE_10 detected\n");
		return FUNC3(us, srb, 0);
	}

	if (srb->cmnd[0] == ALLOW_MEDIUM_REMOVAL) {
		/*
		 * sure.  whatever.  not like we can stop the user from popping
		 * the media out of the device (no locking doors, etc)
		 */
		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == START_STOP) {
		/*
		 * this is used by sd.c'check_scsidisk_media_change to detect
		 * media change
		 */
		FUNC10(us, "START_STOP\n");
		/*
		 * the first jumpshot_id_device after a media change returns
		 * an error (determined experimentally)
		 */
		rc = FUNC4(us, info);
		if (rc == USB_STOR_TRANSPORT_GOOD) {
			info->sense_key = NO_SENSE;
			srb->result = SUCCESS;
		} else {
			info->sense_key = UNIT_ATTENTION;
			srb->result = SAM_STAT_CHECK_CONDITION;
		}
		return rc;
	}

	FUNC10(us, "Gah! Unknown command: %d (0x%x)\n",
		     srb->cmnd[0], srb->cmnd[0]);
	info->sense_key = 0x05;
	info->sense_asc = 0x20;
	info->sense_ascq = 0x00;
	return USB_STOR_TRANSPORT_FAILED;
}