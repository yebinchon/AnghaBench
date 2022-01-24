#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_hdr {int sense_key; int asc; } ;
struct scsi_disk {TYPE_2__* device; scalar_t__ medium_access_timed_out; } ;
struct scsi_cmnd {int result; int* cmnd; int /*<<< orphan*/  sense_buffer; struct request* request; TYPE_1__* device; } ;
struct request {int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  rq_disk; } ;
struct TYPE_4__ {int no_write_same; } ;
struct TYPE_3__ {unsigned int sector_size; } ;

/* Variables and functions */
#define  ABORTED_COMMAND 141 
 scalar_t__ DRIVER_SENSE ; 
#define  HARDWARE_ERROR 140 
#define  ILLEGAL_REQUEST 139 
 int /*<<< orphan*/  KERN_INFO ; 
#define  MEDIUM_ERROR 138 
#define  NO_SENSE 137 
#define  RECOVERED_ERROR 136 
#define  REQ_OP_DISCARD 135 
#define  REQ_OP_WRITE_SAME 134 
#define  REQ_OP_WRITE_ZEROES 133 
#define  REQ_OP_ZONE_RESET 132 
#define  REQ_OP_ZONE_RESET_ALL 131 
 int /*<<< orphan*/  RQF_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  SD_LBP_DISABLE ; 
#define  UNMAP 130 
#define  WRITE_SAME 129 
#define  WRITE_SAME_16 128 
 unsigned int FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (struct scsi_cmnd*) ; 
 int FUNC9 (struct scsi_cmnd*,struct scsi_sense_hdr*) ; 
 struct scsi_disk* FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int FUNC13 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*,unsigned int) ; 
 unsigned int FUNC15 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_disk*) ; 
 scalar_t__ FUNC18 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct scsi_disk*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_cmnd*,unsigned int,struct scsi_sense_hdr*) ; 

__attribute__((used)) static int FUNC21(struct scsi_cmnd *SCpnt)
{
	int result = SCpnt->result;
	unsigned int good_bytes = result ? 0 : FUNC8(SCpnt);
	unsigned int sector_size = SCpnt->device->sector_size;
	unsigned int resid;
	struct scsi_sense_hdr sshdr;
	struct scsi_disk *sdkp = FUNC10(SCpnt->request->rq_disk);
	struct request *req = SCpnt->request;
	int sense_valid = 0;
	int sense_deferred = 0;

	switch (FUNC5(req)) {
	case REQ_OP_DISCARD:
	case REQ_OP_WRITE_ZEROES:
	case REQ_OP_WRITE_SAME:
	case REQ_OP_ZONE_RESET:
	case REQ_OP_ZONE_RESET_ALL:
		if (!result) {
			good_bytes = FUNC1(req);
			FUNC14(SCpnt, 0);
		} else {
			good_bytes = 0;
			FUNC14(SCpnt, FUNC1(req));
		}
		break;
	default:
		/*
		 * In case of bogus fw or device, we could end up having
		 * an unaligned partial completion. Check this here and force
		 * alignment.
		 */
		resid = FUNC11(SCpnt);
		if (resid & (sector_size - 1)) {
			FUNC19(KERN_INFO, sdkp,
				"Unaligned partial completion (resid=%u, sector_sz=%u)\n",
				resid, sector_size);
			FUNC12(SCpnt);
			resid = FUNC4(FUNC8(SCpnt),
				    FUNC6(resid, sector_size));
			FUNC14(SCpnt, resid);
		}
	}

	if (result) {
		sense_valid = FUNC9(SCpnt, &sshdr);
		if (sense_valid)
			sense_deferred = FUNC13(&sshdr);
	}
	sdkp->medium_access_timed_out = 0;

	if (FUNC2(result) != DRIVER_SENSE &&
	    (!sense_valid || sense_deferred))
		goto out;

	switch (sshdr.sense_key) {
	case HARDWARE_ERROR:
	case MEDIUM_ERROR:
		good_bytes = FUNC15(SCpnt);
		break;
	case RECOVERED_ERROR:
		good_bytes = FUNC8(SCpnt);
		break;
	case NO_SENSE:
		/* This indicates a false check condition, so ignore it.  An
		 * unknown amount of data was transferred so treat it as an
		 * error.
		 */
		SCpnt->result = 0;
		FUNC3(SCpnt->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
		break;
	case ABORTED_COMMAND:
		if (sshdr.asc == 0x10)  /* DIF: Target detected corruption */
			good_bytes = FUNC15(SCpnt);
		break;
	case ILLEGAL_REQUEST:
		switch (sshdr.asc) {
		case 0x10:	/* DIX: Host detected corruption */
			good_bytes = FUNC15(SCpnt);
			break;
		case 0x20:	/* INVALID COMMAND OPCODE */
		case 0x24:	/* INVALID FIELD IN CDB */
			switch (SCpnt->cmnd[0]) {
			case UNMAP:
				FUNC16(sdkp, SD_LBP_DISABLE);
				break;
			case WRITE_SAME_16:
			case WRITE_SAME:
				if (SCpnt->cmnd[1] & 8) { /* UNMAP */
					FUNC16(sdkp, SD_LBP_DISABLE);
				} else {
					sdkp->device->no_write_same = 1;
					FUNC17(sdkp);
					req->rq_flags |= RQF_QUIET;
				}
				break;
			}
		}
		break;
	default:
		break;
	}

 out:
	if (FUNC18(sdkp))
		FUNC20(SCpnt, good_bytes, &sshdr);

	FUNC0(1, FUNC7(KERN_INFO, SCpnt,
					   "sd_done: completed %d of %d bytes\n",
					   good_bytes, FUNC8(SCpnt)));

	return good_bytes;
}