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
typedef  int u32 ;
struct scsi_device {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; scalar_t__ sense_buffer; int /*<<< orphan*/  cmnd; int /*<<< orphan*/  cmd_len; struct scsi_device* device; } ;
struct pvscsi_ctx {scalar_t__ sensePA; } ;
struct pvscsi_adapter {TYPE_1__* dev; struct PVSCSIRingReqDesc* req_ring; struct PVSCSIRingsState* rings_state; } ;
struct PVSCSIRingsState {int reqNumEntriesLog2; int reqProdIdx; int cmpConsIdx; } ;
struct PVSCSIRingReqDesc {int /*<<< orphan*/  context; scalar_t__ flags; int /*<<< orphan*/  tag; int /*<<< orphan*/  cdbLen; int /*<<< orphan*/  cdb; int /*<<< orphan*/  vcpuHint; scalar_t__ senseAddr; scalar_t__ senseLen; int /*<<< orphan*/ * lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_NONE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (int) ; 
 scalar_t__ PVSCSI_FLAG_CMD_DIR_NONE ; 
 scalar_t__ PVSCSI_FLAG_CMD_DIR_TODEVICE ; 
 scalar_t__ PVSCSI_FLAG_CMD_DIR_TOHOST ; 
 scalar_t__ SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  SIMPLE_QUEUE_TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct pvscsi_adapter*,struct pvscsi_ctx*,struct scsi_cmnd*,struct PVSCSIRingReqDesc*) ; 
 int /*<<< orphan*/  FUNC8 (struct pvscsi_adapter*,struct pvscsi_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct pvscsi_adapter *adapter,
			     struct pvscsi_ctx *ctx, struct scsi_cmnd *cmd)
{
	struct PVSCSIRingsState *s;
	struct PVSCSIRingReqDesc *e;
	struct scsi_device *sdev;
	u32 req_entries;

	s = adapter->rings_state;
	sdev = cmd->device;
	req_entries = s->reqNumEntriesLog2;

	/*
	 * If this condition holds, we might have room on the request ring, but
	 * we might not have room on the completion ring for the response.
	 * However, we have already ruled out this possibility - we would not
	 * have successfully allocated a context if it were true, since we only
	 * have one context per request entry.  Check for it anyway, since it
	 * would be a serious bug.
	 */
	if (s->reqProdIdx - s->cmpConsIdx >= 1 << req_entries) {
		FUNC9(KERN_ERR, cmd, "vmw_pvscsi: "
			    "ring full: reqProdIdx=%d cmpConsIdx=%d\n",
			    s->reqProdIdx, s->cmpConsIdx);
		return -1;
	}

	e = adapter->req_ring + (s->reqProdIdx & FUNC0(req_entries));

	e->bus    = sdev->channel;
	e->target = sdev->id;
	FUNC6(e->lun, 0, sizeof(e->lun));
	e->lun[1] = sdev->lun;

	if (cmd->sense_buffer) {
		ctx->sensePA = FUNC2(&adapter->dev->dev,
				cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
				DMA_FROM_DEVICE);
		if (FUNC3(&adapter->dev->dev, ctx->sensePA)) {
			FUNC9(KERN_ERR, cmd,
				    "vmw_pvscsi: Failed to map sense buffer for DMA.\n");
			ctx->sensePA = 0;
			return -ENOMEM;
		}
		e->senseAddr = ctx->sensePA;
		e->senseLen = SCSI_SENSE_BUFFERSIZE;
	} else {
		e->senseLen  = 0;
		e->senseAddr = 0;
	}
	e->cdbLen   = cmd->cmd_len;
	e->vcpuHint = FUNC10();
	FUNC5(e->cdb, cmd->cmnd, e->cdbLen);

	e->tag = SIMPLE_QUEUE_TAG;

	if (cmd->sc_data_direction == DMA_FROM_DEVICE)
		e->flags = PVSCSI_FLAG_CMD_DIR_TOHOST;
	else if (cmd->sc_data_direction == DMA_TO_DEVICE)
		e->flags = PVSCSI_FLAG_CMD_DIR_TODEVICE;
	else if (cmd->sc_data_direction == DMA_NONE)
		e->flags = PVSCSI_FLAG_CMD_DIR_NONE;
	else
		e->flags = 0;

	if (FUNC7(adapter, ctx, cmd, e) != 0) {
		if (cmd->sense_buffer) {
			FUNC4(&adapter->dev->dev, ctx->sensePA,
					 SCSI_SENSE_BUFFERSIZE,
					 DMA_FROM_DEVICE);
			ctx->sensePA = 0;
		}
		return -ENOMEM;
	}

	e->context = FUNC8(adapter, ctx);

	FUNC1();

	s->reqProdIdx++;

	return 0;
}