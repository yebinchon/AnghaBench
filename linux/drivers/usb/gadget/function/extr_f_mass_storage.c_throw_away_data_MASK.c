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
typedef  scalar_t__ u32 ;
struct fsg_common {scalar_t__ usb_amount_left; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {scalar_t__ state; scalar_t__ bulk_out_intended_length; TYPE_1__* outreq; struct fsg_buffhd* next; } ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ BUF_STATE_EMPTY ; 
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FSG_BUFLEN ; 
 int /*<<< orphan*/  FSG_STATE_ABORT_BULK_OUT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_common*,struct fsg_buffhd*,scalar_t__) ; 
 int FUNC3 (struct fsg_common*,int,struct fsg_buffhd*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_common*,struct fsg_buffhd*) ; 

__attribute__((used)) static int FUNC5(struct fsg_common *common)
{
	struct fsg_buffhd	*bh, *bh2;
	u32			amount;
	int			rc;

	for (bh = common->next_buffhd_to_drain;
	     bh->state != BUF_STATE_EMPTY || common->usb_amount_left > 0;
	     bh = common->next_buffhd_to_drain) {

		/* Try to submit another request if we need one */
		bh2 = common->next_buffhd_to_fill;
		if (bh2->state == BUF_STATE_EMPTY &&
				common->usb_amount_left > 0) {
			amount = FUNC0(common->usb_amount_left, FSG_BUFLEN);

			/*
			 * Except at the end of the transfer, amount will be
			 * equal to the buffer size, which is divisible by
			 * the bulk-out maxpacket size.
			 */
			FUNC2(common, bh2, amount);
			if (!FUNC4(common, bh2))
				/* Dunno what to do if common->fsg is NULL */
				return -EIO;
			common->next_buffhd_to_fill = bh2->next;
			common->usb_amount_left -= amount;
			continue;
		}

		/* Wait for the data to be received */
		rc = FUNC3(common, false, bh);
		if (rc)
			return rc;

		/* Throw away the data in a filled buffer */
		bh->state = BUF_STATE_EMPTY;
		common->next_buffhd_to_drain = bh->next;

		/* A short packet or an error ends everything */
		if (bh->outreq->actual < bh->bulk_out_intended_length ||
				bh->outreq->status != 0) {
			FUNC1(common, FSG_STATE_ABORT_BULK_OUT);
			return -EINTR;
		}
	}
	return 0;
}