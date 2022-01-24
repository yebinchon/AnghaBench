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
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_cmnd {scalar_t__* sense_buffer; struct request* request; } ;
struct request {int rq_flags; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  sense_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ RECOVERED_ERROR ; 
 int RQF_QUIET ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 scalar_t__ FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct scsi_cmnd*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 TYPE_1__* FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *cmd, int result,
					blk_status_t *blk_statp)
{
	bool sense_valid;
	bool sense_current = true;	/* false implies "deferred sense" */
	struct request *req = cmd->request;
	struct scsi_sense_hdr sshdr;

	sense_valid = FUNC3(cmd, &sshdr);
	if (sense_valid)
		sense_current = !FUNC7(&sshdr);

	if (FUNC1(req)) {
		if (sense_valid) {
			/*
			 * SG_IO wants current and deferred errors
			 */
			FUNC5(req)->sense_len =
				FUNC2(8 + cmd->sense_buffer[7],
				    SCSI_SENSE_BUFFERSIZE);
		}
		if (sense_current)
			*blk_statp = FUNC6(cmd, result);
	} else if (FUNC0(req) == 0 && sense_current) {
		/*
		 * Flush commands do not transfers any data, and thus cannot use
		 * good_bytes != blk_rq_bytes(req) as the signal for an error.
		 * This sets *blk_statp explicitly for the problem case.
		 */
		*blk_statp = FUNC6(cmd, result);
	}
	/*
	 * Recovered errors need reporting, but they're always treated as
	 * success, so fiddle the result code here.  For passthrough requests
	 * we already took a copy of the original into sreq->result which
	 * is what gets returned to the user
	 */
	if (sense_valid && (sshdr.sense_key == RECOVERED_ERROR)) {
		bool do_print = true;
		/*
		 * if ATA PASS-THROUGH INFORMATION AVAILABLE [0x0, 0x1d]
		 * skip print since caller wants ATA registers. Only occurs
		 * on SCSI ATA PASS_THROUGH commands when CK_COND=1
		 */
		if ((sshdr.asc == 0x0) && (sshdr.ascq == 0x1d))
			do_print = false;
		else if (req->rq_flags & RQF_QUIET)
			do_print = false;
		if (do_print)
			FUNC4(cmd);
		result = 0;
		/* for passthrough, *blk_statp may be set */
		*blk_statp = BLK_STS_OK;
	}
	/*
	 * Another corner case: the SCSI status byte is non-zero but 'good'.
	 * Example: PRE-FETCH command returns SAM_STAT_CONDITION_MET when
	 * it is able to fit nominated LBs in its cache (and SAM_STAT_GOOD
	 * if it can't fit). Treat SAM_STAT_CONDITION_MET and the related
	 * intermediate statuses (both obsolete in SAM-4) as good.
	 */
	if (FUNC9(result) && FUNC8(result)) {
		result = 0;
		*blk_statp = BLK_STS_OK;
	}
	return result;
}