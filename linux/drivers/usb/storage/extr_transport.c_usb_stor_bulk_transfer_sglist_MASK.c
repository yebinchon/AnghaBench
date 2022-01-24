#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; unsigned int bytes; } ;
struct us_data {TYPE_1__ current_sg; int /*<<< orphan*/  dflags; int /*<<< orphan*/  pusb_dev; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int USB_STOR_XFER_ERROR ; 
 int /*<<< orphan*/  US_FLIDX_ABORTING ; 
 int /*<<< orphan*/  US_FLIDX_SG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct us_data*,unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct scatterlist*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct us_data*,char*,...) ; 

__attribute__((used)) static int FUNC9(struct us_data *us, unsigned int pipe,
		struct scatterlist *sg, int num_sg, unsigned int length,
		unsigned int *act_len)
{
	int result;

	/* don't submit s-g requests during abort processing */
	if (FUNC4(US_FLIDX_ABORTING, &us->dflags))
		return USB_STOR_XFER_ERROR;

	/* initialize the scatter-gather request block */
	FUNC8(us, "xfer %u bytes, %d entries\n", length, num_sg);
	result = FUNC6(&us->current_sg, us->pusb_dev, pipe, 0,
			sg, num_sg, length, GFP_NOIO);
	if (result) {
		FUNC8(us, "usb_sg_init returned %d\n", result);
		return USB_STOR_XFER_ERROR;
	}

	/*
	 * since the block has been initialized successfully, it's now
	 * okay to cancel it
	 */
	FUNC2(US_FLIDX_SG_ACTIVE, &us->dflags);

	/* did an abort occur during the submission? */
	if (FUNC4(US_FLIDX_ABORTING, &us->dflags)) {

		/* cancel the request, if it hasn't been cancelled already */
		if (FUNC3(US_FLIDX_SG_ACTIVE, &us->dflags)) {
			FUNC8(us, "-- cancelling sg request\n");
			FUNC5(&us->current_sg);
		}
	}

	/* wait for the completion of the transfer */
	FUNC7(&us->current_sg);
	FUNC0(US_FLIDX_SG_ACTIVE, &us->dflags);

	result = us->current_sg.status;
	if (act_len)
		*act_len = us->current_sg.bytes;
	return FUNC1(us, pipe, length, result,
			us->current_sg.bytes);
}