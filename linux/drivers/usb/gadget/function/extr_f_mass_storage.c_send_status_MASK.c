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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct fsg_lun {scalar_t__ sense_data; scalar_t__ sense_data_info; } ;
struct fsg_common {struct fsg_buffhd* next_buffhd_to_fill; int /*<<< orphan*/  residue; int /*<<< orphan*/  tag; scalar_t__ phase_error; scalar_t__ bad_lun_okay; struct fsg_lun* curlun; } ;
struct fsg_buffhd {struct fsg_buffhd* next; TYPE_1__* inreq; scalar_t__ buf; } ;
struct bulk_cs_wrap {int /*<<< orphan*/  Status; void* Residue; int /*<<< orphan*/  Tag; void* Signature; } ;
struct TYPE_2__ {scalar_t__ zero; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_common*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SS_INVALID_COMMAND ; 
 scalar_t__ SS_LOGICAL_UNIT_NOT_SUPPORTED ; 
 scalar_t__ SS_NO_SENSE ; 
 int /*<<< orphan*/  US_BULK_CS_SIGN ; 
 int /*<<< orphan*/  US_BULK_CS_WRAP_LEN ; 
 int /*<<< orphan*/  US_BULK_STAT_FAIL ; 
 int /*<<< orphan*/  US_BULK_STAT_OK ; 
 int /*<<< orphan*/  US_BULK_STAT_PHASE ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_common*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fsg_common*,int,struct fsg_buffhd*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsg_common*,struct fsg_buffhd*) ; 

__attribute__((used)) static void FUNC8(struct fsg_common *common)
{
	struct fsg_lun		*curlun = common->curlun;
	struct fsg_buffhd	*bh;
	struct bulk_cs_wrap	*csw;
	int			rc;
	u8			status = US_BULK_STAT_OK;
	u32			sd, sdinfo = 0;

	/* Wait for the next buffer to become available */
	bh = common->next_buffhd_to_fill;
	rc = FUNC6(common, false, bh);
	if (rc)
		return;

	if (curlun) {
		sd = curlun->sense_data;
		sdinfo = curlun->sense_data_info;
	} else if (common->bad_lun_okay)
		sd = SS_NO_SENSE;
	else
		sd = SS_LOGICAL_UNIT_NOT_SUPPORTED;

	if (common->phase_error) {
		FUNC2(common, "sending phase-error status\n");
		status = US_BULK_STAT_PHASE;
		sd = SS_INVALID_COMMAND;
	} else if (sd != SS_NO_SENSE) {
		FUNC2(common, "sending command-failure status\n");
		status = US_BULK_STAT_FAIL;
		FUNC4(common, "  sense data: SK x%02x, ASC x%02x, ASCQ x%02x;"
				"  info x%x\n",
				FUNC3(sd), FUNC0(sd), FUNC1(sd), sdinfo);
	}

	/* Store and send the Bulk-only CSW */
	csw = (void *)bh->buf;

	csw->Signature = FUNC5(US_BULK_CS_SIGN);
	csw->Tag = common->tag;
	csw->Residue = FUNC5(common->residue);
	csw->Status = status;

	bh->inreq->length = US_BULK_CS_WRAP_LEN;
	bh->inreq->zero = 0;
	if (!FUNC7(common, bh))
		/* Don't know what to do if common->fsg is NULL */
		return;

	common->next_buffhd_to_fill = bh->next;
	return;
}