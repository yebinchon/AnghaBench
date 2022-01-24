#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct TYPE_8__ {TYPE_3__ ioasa; } ;
struct ipr_cmd_pkt {int /*<<< orphan*/  timeout; int /*<<< orphan*/  flags_hi; int /*<<< orphan*/ * cdb; int /*<<< orphan*/  request_type; } ;
struct TYPE_5__ {struct ipr_cmd_pkt cmd_pkt; } ;
struct ipr_cmnd {int /*<<< orphan*/  sense_buffer_dma; TYPE_4__ s; TYPE_1__ ioarcb; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IPR_FLAGS_HI_NO_ULEN_CHK ; 
 int /*<<< orphan*/  IPR_FLAGS_HI_SYNC_OVERRIDE ; 
 int /*<<< orphan*/  IPR_IOADL_FLAGS_READ_LAST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IPR_REQUEST_SENSE_TIMEOUT ; 
 int /*<<< orphan*/  IPR_RQTYPE_SCSICDB ; 
 int /*<<< orphan*/  REQUEST_SENSE ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ipr_erp_done ; 
 int /*<<< orphan*/  FUNC5 (struct ipr_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  ipr_timeout ; 

__attribute__((used)) static void FUNC7(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_cmd_pkt *cmd_pkt = &ipr_cmd->ioarcb.cmd_pkt;
	u32 ioasc = FUNC2(ipr_cmd->s.ioasa.hdr.ioasc);

	if (FUNC0(ioasc) > 0) {
		FUNC1(ipr_cmd);
		return;
	}

	FUNC6(ipr_cmd);

	cmd_pkt->request_type = IPR_RQTYPE_SCSICDB;
	cmd_pkt->cdb[0] = REQUEST_SENSE;
	cmd_pkt->cdb[4] = SCSI_SENSE_BUFFERSIZE;
	cmd_pkt->flags_hi |= IPR_FLAGS_HI_SYNC_OVERRIDE;
	cmd_pkt->flags_hi |= IPR_FLAGS_HI_NO_ULEN_CHK;
	cmd_pkt->timeout = FUNC3(IPR_REQUEST_SENSE_TIMEOUT / HZ);

	FUNC5(ipr_cmd, ipr_cmd->sense_buffer_dma,
		       SCSI_SENSE_BUFFERSIZE, IPR_IOADL_FLAGS_READ_LAST);

	FUNC4(ipr_cmd, ipr_erp_done, ipr_timeout,
		   IPR_REQUEST_SENSE_TIMEOUT * 2);
}