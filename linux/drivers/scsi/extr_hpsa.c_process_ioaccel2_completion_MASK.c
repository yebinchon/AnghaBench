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
struct scsi_cmnd {int result; } ;
struct TYPE_2__ {scalar_t__ serv_response; scalar_t__ status; } ;
struct io_accel2_cmd {TYPE_1__ error_data; } ;
struct hpsa_scsi_dev_t {scalar_t__ in_reset; scalar_t__ offload_to_be_enabled; scalar_t__ offload_enabled; } ;
struct ctlr_info {struct io_accel2_cmd* ioaccel2_cmd_pool; } ;
struct CommandList {size_t cmdindex; } ;

/* Variables and functions */
 int DID_RESET ; 
 scalar_t__ IOACCEL2_SERV_RESPONSE_FAILURE ; 
 scalar_t__ IOACCEL2_STATUS_SR_IOACCEL_DISABLED ; 
 scalar_t__ FUNC0 (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*,struct io_accel2_cmd*,struct hpsa_scsi_dev_t*) ; 
 void FUNC1 (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*) ; 
 void FUNC2 (struct ctlr_info*,struct CommandList*) ; 
 scalar_t__ FUNC3 (struct hpsa_scsi_dev_t*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ctlr_info *h,
		struct CommandList *c, struct scsi_cmnd *cmd,
		struct hpsa_scsi_dev_t *dev)
{
	struct io_accel2_cmd *c2 = &h->ioaccel2_cmd_pool[c->cmdindex];

	/* check for good status */
	if (FUNC4(c2->error_data.serv_response == 0 &&
			c2->error_data.status == 0)) {
		cmd->result = 0;
		return FUNC1(h, c, cmd);
	}

	/*
	 * Any RAID offload error results in retry which will use
	 * the normal I/O path so the controller can handle whatever is
	 * wrong.
	 */
	if (FUNC3(dev) &&
		c2->error_data.serv_response ==
			IOACCEL2_SERV_RESPONSE_FAILURE) {
		if (c2->error_data.status ==
			IOACCEL2_STATUS_SR_IOACCEL_DISABLED) {
			dev->offload_enabled = 0;
			dev->offload_to_be_enabled = 0;
		}

		if (dev->in_reset) {
			cmd->result = DID_RESET << 16;
			return FUNC1(h, c, cmd);
		}

		return FUNC2(h, c);
	}

	if (FUNC0(h, c, cmd, c2, dev))
		return FUNC2(h, c);

	return FUNC1(h, c, cmd);
}