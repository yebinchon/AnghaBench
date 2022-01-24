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
typedef  unsigned int u8 ;
struct us_data {unsigned int send_bulk_pipe; unsigned int recv_bulk_pipe; int fflags; int /*<<< orphan*/ * srb; scalar_t__ iobuf; } ;
struct bulk_cs_wrap {unsigned int DataTransferLength; scalar_t__ Status; int /*<<< orphan*/  Residue; } ;
struct bulk_cb_wrap {unsigned int DataTransferLength; scalar_t__ Status; int /*<<< orphan*/  Residue; } ;

/* Variables and functions */
 unsigned int FDIR_READ ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int USB_STOR_XFER_SHORT ; 
 int USB_STOR_XFER_STALLED ; 
 int /*<<< orphan*/  US_BULK_CB_WRAP_LEN ; 
 int /*<<< orphan*/  US_BULK_CS_WRAP_LEN ; 
 scalar_t__ US_BULK_STAT_OK ; 
 int US_FL_IGNORE_RESIDUE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct us_data*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct us_data*,unsigned int,struct bulk_cs_wrap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (struct us_data*,unsigned int,void*,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct us_data*,char*) ; 

__attribute__((used)) static int FUNC9(struct us_data *us, u8 fDir, void *buf, int use_sg)
{
	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
	struct bulk_cs_wrap *bcs = (struct bulk_cs_wrap *) us->iobuf;

	int result;
	unsigned int residue;
	unsigned int cswlen = 0, partial = 0;
	unsigned int transfer_length = bcb->DataTransferLength;

	/* usb_stor_dbg(us, "transport --- ene_send_scsi_cmd\n"); */
	/* send cmd to out endpoint */
	result = FUNC6(us, us->send_bulk_pipe,
					    bcb, US_BULK_CB_WRAP_LEN, NULL);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC8(us, "send cmd to out endpoint fail ---\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	if (buf) {
		unsigned int pipe = fDir;

		if (fDir  == FDIR_READ)
			pipe = us->recv_bulk_pipe;
		else
			pipe = us->send_bulk_pipe;

		/* Bulk */
		if (use_sg) {
			result = FUNC5(us, pipe, us->srb);
		} else {
			result = FUNC7(us, pipe, buf,
						transfer_length, 0, &partial);
		}
		if (result != USB_STOR_XFER_GOOD) {
			FUNC8(us, "data transfer fail ---\n");
			return USB_STOR_TRANSPORT_ERROR;
		}
	}

	/* Get CSW for device status */
	result = FUNC6(us, us->recv_bulk_pipe, bcs,
					    US_BULK_CS_WRAP_LEN, &cswlen);

	if (result == USB_STOR_XFER_SHORT && cswlen == 0) {
		FUNC8(us, "Received 0-length CSW; retrying...\n");
		result = FUNC6(us, us->recv_bulk_pipe,
					    bcs, US_BULK_CS_WRAP_LEN, &cswlen);
	}

	if (result == USB_STOR_XFER_STALLED) {
		/* get the status again */
		FUNC8(us, "Attempting to get CSW (2nd try)...\n");
		result = FUNC6(us, us->recv_bulk_pipe,
						bcs, US_BULK_CS_WRAP_LEN, NULL);
	}

	if (result != USB_STOR_XFER_GOOD)
		return USB_STOR_TRANSPORT_ERROR;

	/* check bulk status */
	residue = FUNC0(bcs->Residue);

	/*
	 * try to compute the actual residue, based on how much data
	 * was really transferred and what the device tells us
	 */
	if (residue && !(us->fflags & US_FL_IGNORE_RESIDUE)) {
		residue = FUNC2(residue, transfer_length);
		if (us->srb != NULL)
			FUNC4(us->srb, FUNC1(FUNC3(us->srb),
								(int)residue));
	}

	if (bcs->Status != US_BULK_STAT_OK)
		return USB_STOR_TRANSPORT_ERROR;

	return USB_STOR_TRANSPORT_GOOD;
}