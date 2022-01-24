#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct scsi_cmnd {int underflow; int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int /*<<< orphan*/ * host_scribble; int /*<<< orphan*/  sense_buffer; } ;
struct bfad_s {int dummy; } ;
struct bfad_itnim_s {int dummy; } ;
struct bfad_itnim_data_s {struct bfad_itnim_s* itnim; } ;
struct bfad_ioim_s {int dummy; } ;
typedef  int s32 ;
typedef  enum bfi_ioim_status { ____Placeholder_bfi_ioim_status } bfi_ioim_status ;
struct TYPE_3__ {scalar_t__ queue_depth; struct bfad_itnim_data_s* hostdata; int /*<<< orphan*/ * host; } ;

/* Variables and functions */
#define  BFI_IOIM_STS_OK 130 
#define  BFI_IOIM_STS_PATHTOV 129 
#define  BFI_IOIM_STS_TIMEDOUT 128 
 int DID_ERROR ; 
 int DID_OK ; 
 int DID_TIME_OUT ; 
 int DID_TRANSPORT_DISRUPTED ; 
 int SAM_STAT_GOOD ; 
 scalar_t__ SAM_STAT_TASK_SET_FULL ; 
 int SCSI_SENSE_BUFFERSIZE ; 
 scalar_t__ bfa_lun_queue_depth ; 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_itnim_s*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_itnim_s*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

void
FUNC8(void *drv, struct bfad_ioim_s *dio,
			enum bfi_ioim_status io_status, u8 scsi_status,
			int sns_len, u8 *sns_info, s32 residue)
{
	struct scsi_cmnd *cmnd = (struct scsi_cmnd *)dio;
	struct bfad_s         *bfad = drv;
	struct bfad_itnim_data_s *itnim_data;
	struct bfad_itnim_s *itnim;
	u8         host_status = DID_OK;

	switch (io_status) {
	case BFI_IOIM_STS_OK:
		FUNC0(bfad, scsi_status);
		FUNC6(cmnd, 0);

		if (sns_len > 0) {
			FUNC0(bfad, sns_len);
			if (sns_len > SCSI_SENSE_BUFFERSIZE)
				sns_len = SCSI_SENSE_BUFFERSIZE;
			FUNC3(cmnd->sense_buffer, sns_info, sns_len);
		}

		if (residue > 0) {
			FUNC0(bfad, residue);
			FUNC6(cmnd, residue);
			if (!sns_len && (scsi_status == SAM_STAT_GOOD) &&
				(FUNC4(cmnd) - residue) <
					cmnd->underflow) {
				FUNC0(bfad, 0);
				host_status = DID_ERROR;
			}
		}
		cmnd->result = host_status << 16 | scsi_status;

		break;

	case BFI_IOIM_STS_TIMEDOUT:
		cmnd->result = DID_TIME_OUT << 16;
		break;
	case BFI_IOIM_STS_PATHTOV:
		cmnd->result = DID_TRANSPORT_DISRUPTED << 16;
		break;
	default:
		cmnd->result = DID_ERROR << 16;
	}

	/* Unmap DMA, if host is NULL, it means a scsi passthru cmd */
	if (cmnd->device->host != NULL)
		FUNC5(cmnd);

	cmnd->host_scribble = NULL;
	FUNC0(bfad, cmnd->result);

	itnim_data = cmnd->device->hostdata;
	if (itnim_data) {
		itnim = itnim_data->itnim;
		if (!cmnd->result && itnim &&
			 (bfa_lun_queue_depth > cmnd->device->queue_depth)) {
			/* Queue depth adjustment for good status completion */
			FUNC2(itnim, cmnd->device);
		} else if (cmnd->result == SAM_STAT_TASK_SET_FULL && itnim) {
			/* qfull handling */
			FUNC1(itnim, cmnd->device);
		}
	}

	cmnd->scsi_done(cmnd);
}