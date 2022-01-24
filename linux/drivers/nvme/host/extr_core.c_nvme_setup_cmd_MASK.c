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
struct request {int /*<<< orphan*/  tag; } ;
struct nvme_ns {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  command_id; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
#define  REQ_OP_DISCARD 134 
#define  REQ_OP_DRV_IN 133 
#define  REQ_OP_DRV_OUT 132 
#define  REQ_OP_FLUSH 131 
#define  REQ_OP_READ 130 
#define  REQ_OP_WRITE 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 TYPE_2__* FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ns*,struct request*,struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_ns*,struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_ns*,struct request*,struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_ns*,struct request*,struct nvme_command*) ; 
 int FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct request*,struct nvme_command*) ; 

blk_status_t FUNC11(struct nvme_ns *ns, struct request *req,
		struct nvme_command *cmd)
{
	blk_status_t ret = BLK_STS_OK;

	FUNC3(req);

	FUNC2(cmd, 0, sizeof(*cmd));
	switch (FUNC9(req)) {
	case REQ_OP_DRV_IN:
	case REQ_OP_DRV_OUT:
		FUNC1(cmd, FUNC4(req)->cmd, sizeof(*cmd));
		break;
	case REQ_OP_FLUSH:
		FUNC6(ns, cmd);
		break;
	case REQ_OP_WRITE_ZEROES:
		ret = FUNC8(ns, req, cmd);
		break;
	case REQ_OP_DISCARD:
		ret = FUNC5(ns, req, cmd);
		break;
	case REQ_OP_READ:
	case REQ_OP_WRITE:
		ret = FUNC7(ns, req, cmd);
		break;
	default:
		FUNC0(1);
		return BLK_STS_IOERR;
	}

	cmd->common.command_id = req->tag;
	FUNC10(req, cmd);
	return ret;
}