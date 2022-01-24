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
struct scsi_cmnd {int /*<<< orphan*/  sc_data_direction; } ;
struct scatterlist {int dummy; } ;
struct pvscsi_ctx {void* dataPA; void* sglPA; struct scatterlist* sgl; } ;
struct pvscsi_adapter {TYPE_1__* dev; } ;
struct PVSCSIRingReqDesc {unsigned int dataLen; void* dataAddr; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PVSCSI_FLAG_CMD_WITH_SG_LIST ; 
 unsigned int SGL_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_ctx*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 unsigned int FUNC4 (struct scsi_cmnd*) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 unsigned int FUNC7 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC8 (struct scsi_cmnd*) ; 
 void* FUNC9 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC10(struct pvscsi_adapter *adapter,
			      struct pvscsi_ctx *ctx, struct scsi_cmnd *cmd,
			      struct PVSCSIRingReqDesc *e)
{
	unsigned count;
	unsigned bufflen = FUNC4(cmd);
	struct scatterlist *sg;

	e->dataLen = bufflen;
	e->dataAddr = 0;
	if (bufflen == 0)
		return 0;

	sg = FUNC8(cmd);
	count = FUNC7(cmd);
	if (count != 0) {
		int segs = FUNC5(cmd);

		if (segs == -ENOMEM) {
			FUNC3(KERN_ERR, cmd,
				    "vmw_pvscsi: Failed to map cmd sglist for DMA.\n");
			return -ENOMEM;
		} else if (segs > 1) {
			FUNC2(ctx, sg, segs);

			e->flags |= PVSCSI_FLAG_CMD_WITH_SG_LIST;
			ctx->sglPA = FUNC0(&adapter->dev->dev,
					ctx->sgl, SGL_SIZE, DMA_TO_DEVICE);
			if (FUNC1(&adapter->dev->dev, ctx->sglPA)) {
				FUNC3(KERN_ERR, cmd,
					    "vmw_pvscsi: Failed to map ctx sglist for DMA.\n");
				FUNC6(cmd);
				ctx->sglPA = 0;
				return -ENOMEM;
			}
			e->dataAddr = ctx->sglPA;
		} else
			e->dataAddr = FUNC9(sg);
	} else {
		/*
		 * In case there is no S/G list, scsi_sglist points
		 * directly to the buffer.
		 */
		ctx->dataPA = FUNC0(&adapter->dev->dev, sg, bufflen,
					     cmd->sc_data_direction);
		if (FUNC1(&adapter->dev->dev, ctx->dataPA)) {
			FUNC3(KERN_ERR, cmd,
				    "vmw_pvscsi: Failed to map direct data buffer for DMA.\n");
			return -ENOMEM;
		}
		e->dataAddr = ctx->dataPA;
	}

	return 0;
}