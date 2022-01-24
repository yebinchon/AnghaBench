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
struct scsi_cmnd {struct request* request; } ;
struct request {int /*<<< orphan*/  rq_disk; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  provisioning_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_NOTSUPP ; 
 int /*<<< orphan*/  BLK_STS_TARGET ; 
#define  REQ_OP_DISCARD 139 
#define  REQ_OP_FLUSH 138 
#define  REQ_OP_READ 137 
#define  REQ_OP_WRITE 136 
#define  REQ_OP_WRITE_SAME 135 
#define  REQ_OP_WRITE_ZEROES 134 
#define  REQ_OP_ZONE_RESET 133 
#define  REQ_OP_ZONE_RESET_ALL 132 
#define  SD_LBP_UNMAP 131 
#define  SD_LBP_WS10 130 
#define  SD_LBP_WS16 129 
#define  SD_LBP_ZERO 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct request*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,int) ; 

__attribute__((used)) static blk_status_t FUNC11(struct scsi_cmnd *cmd)
{
	struct request *rq = cmd->request;

	switch (FUNC1(rq)) {
	case REQ_OP_DISCARD:
		switch (FUNC2(rq->rq_disk)->provisioning_mode) {
		case SD_LBP_UNMAP:
			return FUNC5(cmd);
		case SD_LBP_WS16:
			return FUNC7(cmd, true);
		case SD_LBP_WS10:
			return FUNC6(cmd, true);
		case SD_LBP_ZERO:
			return FUNC6(cmd, false);
		default:
			return BLK_STS_TARGET;
		}
	case REQ_OP_WRITE_ZEROES:
		return FUNC9(cmd);
	case REQ_OP_WRITE_SAME:
		return FUNC8(cmd);
	case REQ_OP_FLUSH:
		return FUNC3(cmd);
	case REQ_OP_READ:
	case REQ_OP_WRITE:
		return FUNC4(cmd);
	case REQ_OP_ZONE_RESET:
		return FUNC10(cmd, false);
	case REQ_OP_ZONE_RESET_ALL:
		return FUNC10(cmd, true);
	default:
		FUNC0(1);
		return BLK_STS_NOTSUPP;
	}
}