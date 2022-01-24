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
struct scsi_cmnd {unsigned char* host_scribble; int cmd_len; int sc_data_direction; int /*<<< orphan*/ * cmnd; } ;
struct hpsa_scsi_dev_t {scalar_t__ in_reset; int /*<<< orphan*/ * scsi3addr; } ;
struct ctlr_info {TYPE_4__* pdev; } ;
struct TYPE_7__ {int CDBLen; void* type_attr_dir; int /*<<< orphan*/ * CDB; scalar_t__ Timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/ * LunAddrBytes; } ;
struct TYPE_6__ {int /*<<< orphan*/  tag; TYPE_1__ LUN; scalar_t__ ReplyQueue; } ;
struct CommandList {int cmdindex; struct hpsa_scsi_dev_t* device; TYPE_3__ Request; TYPE_2__ Header; struct scsi_cmnd* scsi_cmd; int /*<<< orphan*/  cmd_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CMD_SCSI ; 
 int DIRECT_LOOKUP_SHIFT ; 
#define  DMA_BIDIRECTIONAL 131 
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 int /*<<< orphan*/  XFER_NONE ; 
 int /*<<< orphan*/  XFER_READ ; 
 int /*<<< orphan*/  XFER_RSVD ; 
 int /*<<< orphan*/  XFER_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctlr_info*,struct CommandList*) ; 
 scalar_t__ FUNC7 (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct ctlr_info *h,
	struct CommandList *c, struct scsi_cmnd *cmd,
	struct hpsa_scsi_dev_t *dev)
{
	cmd->host_scribble = (unsigned char *) c;
	c->cmd_type = CMD_SCSI;
	c->scsi_cmd = cmd;
	c->Header.ReplyQueue = 0;  /* unused in simple mode */
	FUNC8(&c->Header.LUN.LunAddrBytes[0], &dev->scsi3addr[0], 8);
	c->Header.tag = FUNC3((c->cmdindex << DIRECT_LOOKUP_SHIFT));

	/* Fill in the request block... */

	c->Request.Timeout = 0;
	FUNC1(cmd->cmd_len > sizeof(c->Request.CDB));
	c->Request.CDBLen = cmd->cmd_len;
	FUNC8(c->Request.CDB, cmd->cmnd, cmd->cmd_len);
	switch (cmd->sc_data_direction) {
	case DMA_TO_DEVICE:
		c->Request.type_attr_dir =
			FUNC2(TYPE_CMD, ATTR_SIMPLE, XFER_WRITE);
		break;
	case DMA_FROM_DEVICE:
		c->Request.type_attr_dir =
			FUNC2(TYPE_CMD, ATTR_SIMPLE, XFER_READ);
		break;
	case DMA_NONE:
		c->Request.type_attr_dir =
			FUNC2(TYPE_CMD, ATTR_SIMPLE, XFER_NONE);
		break;
	case DMA_BIDIRECTIONAL:
		/* This can happen if a buggy application does a scsi passthru
		 * and sets both inlen and outlen to non-zero. ( see
		 * ../scsi/scsi_ioctl.c:scsi_ioctl_send_command() )
		 */

		c->Request.type_attr_dir =
			FUNC2(TYPE_CMD, ATTR_SIMPLE, XFER_RSVD);
		/* This is technically wrong, and hpsa controllers should
		 * reject it with CMD_INVALID, which is the most correct
		 * response, but non-fibre backends appear to let it
		 * slide by, and give the same results as if this field
		 * were set correctly.  Either way is acceptable for
		 * our purposes here.
		 */

		break;

	default:
		FUNC4(&h->pdev->dev, "unknown data direction: %d\n",
			cmd->sc_data_direction);
		FUNC0();
		break;
	}

	if (FUNC7(h, c, cmd) < 0) { /* Fill SG list */
		FUNC6(h, c);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	if (dev->in_reset) {
		FUNC6(h, c);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	c->device = dev;

	FUNC5(h, c);
	/* the cmd'll come back via intr handler in complete_scsi_command()  */
	return 0;
}