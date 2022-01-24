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
struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;
struct scsi_cmnd {unsigned int* cmnd; } ;
struct alauda_info {unsigned char sense_key; unsigned char sense_asc; unsigned char sense_ascq; } ;
typedef  int /*<<< orphan*/  inquiry_response ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {unsigned int capacity; unsigned int zoneshift; unsigned int blockshift; unsigned int pageshift; unsigned int uzonesize; unsigned int blocksize; } ;

/* Variables and functions */
 unsigned int ALLOW_MEDIUM_REMOVAL ; 
 unsigned int INQUIRY ; 
 TYPE_1__ FUNC0 (struct us_data*) ; 
 unsigned int READ_10 ; 
 unsigned int READ_CAPACITY ; 
 unsigned int REQUEST_SENSE ; 
 unsigned int TEST_UNIT_READY ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 unsigned int WRITE_10 ; 
 int FUNC1 (struct us_data*) ; 
 int FUNC2 (struct us_data*,unsigned int,unsigned int) ; 
 int FUNC3 (struct us_data*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct us_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *srb, struct us_data *us)
{
	int rc;
	struct alauda_info *info = (struct alauda_info *) us->extra;
	unsigned char *ptr = us->iobuf;
	static unsigned char inquiry_response[36] = {
		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
	};

	if (srb->cmnd[0] == INQUIRY) {
		FUNC9(us, "INQUIRY - Returning bogus response\n");
		FUNC6(ptr, inquiry_response, sizeof(inquiry_response));
		FUNC5(us, ptr, 36);
		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == TEST_UNIT_READY) {
		FUNC9(us, "TEST_UNIT_READY\n");
		return FUNC1(us);
	}

	if (srb->cmnd[0] == READ_CAPACITY) {
		unsigned int num_zones;
		unsigned long capacity;

		rc = FUNC1(us);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		num_zones = FUNC0(us).capacity >> (FUNC0(us).zoneshift
			+ FUNC0(us).blockshift + FUNC0(us).pageshift);

		capacity = num_zones * FUNC0(us).uzonesize
			* FUNC0(us).blocksize;

		/* Report capacity and page size */
		((__be32 *) ptr)[0] = FUNC4(capacity - 1);
		((__be32 *) ptr)[1] = FUNC4(512);

		FUNC10(ptr, 8, srb);
		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == READ_10) {
		unsigned int page, pages;

		rc = FUNC1(us);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		page = FUNC8(srb->cmnd[3], srb->cmnd[2]);
		page <<= 16;
		page |= FUNC8(srb->cmnd[5], srb->cmnd[4]);
		pages = FUNC8(srb->cmnd[8], srb->cmnd[7]);

		FUNC9(us, "READ_10: page %d pagect %d\n", page, pages);

		return FUNC2(us, page, pages);
	}

	if (srb->cmnd[0] == WRITE_10) {
		unsigned int page, pages;

		rc = FUNC1(us);
		if (rc != USB_STOR_TRANSPORT_GOOD)
			return rc;

		page = FUNC8(srb->cmnd[3], srb->cmnd[2]);
		page <<= 16;
		page |= FUNC8(srb->cmnd[5], srb->cmnd[4]);
		pages = FUNC8(srb->cmnd[8], srb->cmnd[7]);

		FUNC9(us, "WRITE_10: page %d pagect %d\n", page, pages);

		return FUNC3(us, page, pages);
	}

	if (srb->cmnd[0] == REQUEST_SENSE) {
		FUNC9(us, "REQUEST_SENSE\n");

		FUNC7(ptr, 0, 18);
		ptr[0] = 0xF0;
		ptr[2] = info->sense_key;
		ptr[7] = 11;
		ptr[12] = info->sense_asc;
		ptr[13] = info->sense_ascq;
		FUNC10(ptr, 18, srb);

		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == ALLOW_MEDIUM_REMOVAL) {
		/*
		 * sure.  whatever.  not like we can stop the user from popping
		 * the media out of the device (no locking doors, etc)
		 */
		return USB_STOR_TRANSPORT_GOOD;
	}

	FUNC9(us, "Gah! Unknown command: %d (0x%x)\n",
		     srb->cmnd[0], srb->cmnd[0]);
	info->sense_key = 0x05;
	info->sense_asc = 0x20;
	info->sense_ascq = 0x00;
	return USB_STOR_TRANSPORT_FAILED;
}