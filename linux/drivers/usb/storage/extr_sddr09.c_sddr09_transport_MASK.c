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
struct us_data {unsigned char* iobuf; unsigned int send_bulk_pipe; unsigned int recv_bulk_pipe; scalar_t__ extra; } ;
struct sddr09_card_info {int flags; int capacity; int pageshift; int pagesize; int blockshift; int blocksize; int blockmask; int lbact; } ;
struct scsi_cmnd {int* cmnd; int cmd_len; scalar_t__ sc_data_direction; } ;
struct nand_flash_dev {int chipshift; int pageshift; int blockshift; } ;
typedef  int /*<<< orphan*/  mode_page_01 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ALLOW_MEDIUM_REMOVAL ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int INQUIRY ; 
 int LUNBITS ; 
 int MODE_SENSE_10 ; 
 int READ_10 ; 
 int READ_CAPACITY ; 
 int REQUEST_SENSE ; 
 int SDDR09_WP ; 
 int TEST_UNIT_READY ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int WRITE_10 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 struct nand_flash_dev* FUNC6 (struct us_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct us_data*,struct sddr09_card_info*) ; 
 int FUNC8 (struct us_data*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct us_data*) ; 
 int FUNC10 (struct us_data*,int*,int) ; 
 int FUNC11 (struct us_data*,unsigned int,unsigned int) ; 
 unsigned int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,char*,int) ; 
 int FUNC14 (unsigned char*) ; 
 int FUNC15 (struct us_data*,unsigned int,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC16 (struct us_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int,struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC18(struct scsi_cmnd *srb, struct us_data *us)
{
	static unsigned char sensekey = 0, sensecode = 0;
	static unsigned char havefakesense = 0;
	int result, i;
	unsigned char *ptr = us->iobuf;
	unsigned long capacity;
	unsigned int page, pages;

	struct sddr09_card_info *info;

	static unsigned char inquiry_response[8] = {
		0x00, 0x80, 0x00, 0x02, 0x1F, 0x00, 0x00, 0x00
	};

	/* note: no block descriptor support */
	static unsigned char mode_page_01[19] = {
		0x00, 0x0F, 0x00, 0x0, 0x0, 0x0, 0x00,
		0x01, 0x0A,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};

	info = (struct sddr09_card_info *)us->extra;

	if (srb->cmnd[0] == REQUEST_SENSE && havefakesense) {
		/* for a faked command, we have to follow with a faked sense */
		FUNC4(ptr, 0, 18);
		ptr[0] = 0x70;
		ptr[2] = sensekey;
		ptr[7] = 11;
		ptr[12] = sensecode;
		FUNC17(ptr, 18, srb);
		sensekey = sensecode = havefakesense = 0;
		return USB_STOR_TRANSPORT_GOOD;
	}

	havefakesense = 1;

	/*
	 * Dummy up a response for INQUIRY since SDDR09 doesn't
	 * respond to INQUIRY commands
	 */

	if (srb->cmnd[0] == INQUIRY) {
		FUNC3(ptr, inquiry_response, 8);
		FUNC2(us, ptr, 36);
		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == READ_CAPACITY) {
		struct nand_flash_dev *cardinfo;

		FUNC7(us, info);	/* read WP bit */

		cardinfo = FUNC6(us, info->flags);
		if (!cardinfo) {
			/* probably no media */
		init_error:
			sensekey = 0x02;	/* not ready */
			sensecode = 0x3a;	/* medium not present */
			return USB_STOR_TRANSPORT_FAILED;
		}

		info->capacity = (1 << cardinfo->chipshift);
		info->pageshift = cardinfo->pageshift;
		info->pagesize = (1 << info->pageshift);
		info->blockshift = cardinfo->blockshift;
		info->blocksize = (1 << info->blockshift);
		info->blockmask = info->blocksize - 1;

		// map initialization, must follow get_cardinfo()
		if (FUNC9(us)) {
			/* probably out of memory */
			goto init_error;
		}

		// Report capacity

		capacity = (info->lbact << info->blockshift) - 1;

		((__be32 *) ptr)[0] = FUNC1(capacity);

		// Report page size

		((__be32 *) ptr)[1] = FUNC1(info->pagesize);
		FUNC17(ptr, 8, srb);

		return USB_STOR_TRANSPORT_GOOD;
	}

	if (srb->cmnd[0] == MODE_SENSE_10) {
		int modepage = (srb->cmnd[2] & 0x3F);

		/*
		 * They ask for the Read/Write error recovery page,
		 * or for all pages.
		 */
		/* %% We should check DBD %% */
		if (modepage == 0x01 || modepage == 0x3F) {
			FUNC16(us, "Dummy up request for mode page 0x%x\n",
				     modepage);

			FUNC3(ptr, mode_page_01, sizeof(mode_page_01));
			((__be16*)ptr)[0] = FUNC0(sizeof(mode_page_01) - 2);
			ptr[3] = (info->flags & SDDR09_WP) ? 0x80 : 0;
			FUNC17(ptr, sizeof(mode_page_01), srb);
			return USB_STOR_TRANSPORT_GOOD;
		}

		sensekey = 0x05;	/* illegal request */
		sensecode = 0x24;	/* invalid field in CDB */
		return USB_STOR_TRANSPORT_FAILED;
	}

	if (srb->cmnd[0] == ALLOW_MEDIUM_REMOVAL)
		return USB_STOR_TRANSPORT_GOOD;

	havefakesense = 0;

	if (srb->cmnd[0] == READ_10) {

		page = FUNC12(srb->cmnd[3], srb->cmnd[2]);
		page <<= 16;
		page |= FUNC12(srb->cmnd[5], srb->cmnd[4]);
		pages = FUNC12(srb->cmnd[8], srb->cmnd[7]);

		FUNC16(us, "READ_10: read page %d pagect %d\n",
			     page, pages);

		result = FUNC8(us, page, pages);
		return (result == 0 ? USB_STOR_TRANSPORT_GOOD :
				USB_STOR_TRANSPORT_ERROR);
	}

	if (srb->cmnd[0] == WRITE_10) {

		page = FUNC12(srb->cmnd[3], srb->cmnd[2]);
		page <<= 16;
		page |= FUNC12(srb->cmnd[5], srb->cmnd[4]);
		pages = FUNC12(srb->cmnd[8], srb->cmnd[7]);

		FUNC16(us, "WRITE_10: write page %d pagect %d\n",
			     page, pages);

		result = FUNC11(us, page, pages);
		return (result == 0 ? USB_STOR_TRANSPORT_GOOD :
				USB_STOR_TRANSPORT_ERROR);
	}

	/*
	 * catch-all for all other commands, except
	 * pass TEST_UNIT_READY and REQUEST_SENSE through
	 */
	if (srb->cmnd[0] != TEST_UNIT_READY &&
	    srb->cmnd[0] != REQUEST_SENSE) {
		sensekey = 0x05;	/* illegal request */
		sensecode = 0x20;	/* invalid command */
		havefakesense = 1;
		return USB_STOR_TRANSPORT_FAILED;
	}

	for (; srb->cmd_len<12; srb->cmd_len++)
		srb->cmnd[srb->cmd_len] = 0;

	srb->cmnd[1] = LUNBITS;

	ptr[0] = 0;
	for (i=0; i<12; i++)
		FUNC13(ptr+FUNC14(ptr), "%02X ", srb->cmnd[i]);

	FUNC16(us, "Send control for command %s\n", ptr);

	result = FUNC10(us, srb->cmnd, 12);
	if (result) {
		FUNC16(us, "sddr09_send_scsi_command returns %d\n",
			     result);
		return USB_STOR_TRANSPORT_ERROR;
	}

	if (FUNC5(srb) == 0)
		return USB_STOR_TRANSPORT_GOOD;

	if (srb->sc_data_direction == DMA_TO_DEVICE ||
	    srb->sc_data_direction == DMA_FROM_DEVICE) {
		unsigned int pipe = (srb->sc_data_direction == DMA_TO_DEVICE)
				? us->send_bulk_pipe : us->recv_bulk_pipe;

		FUNC16(us, "%s %d bytes\n",
			     (srb->sc_data_direction == DMA_TO_DEVICE) ?
			     "sending" : "receiving",
			     FUNC5(srb));

		result = FUNC15(us, pipe, srb);

		return (result == USB_STOR_XFER_GOOD ?
			USB_STOR_TRANSPORT_GOOD : USB_STOR_TRANSPORT_ERROR);
	} 

	return USB_STOR_TRANSPORT_GOOD;
}