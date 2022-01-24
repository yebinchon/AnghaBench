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
struct qedi_ctx {TYPE_1__* pdev; } ;
struct qedi_cmd {int /*<<< orphan*/  sense_buffer; int /*<<< orphan*/  sense_buffer_dma; int /*<<< orphan*/  hdr; } ;
struct iscsi_task {int hdr_max; int /*<<< orphan*/ * hdr; struct qedi_cmd* dd_data; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; } ;
struct iscsi_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qedi_ctx*,struct iscsi_session*,struct qedi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedi_ctx*,struct iscsi_session*) ; 

__attribute__((used)) static int FUNC3(struct qedi_ctx *qedi,
			       struct iscsi_session *session)
{
	int i;

	for (i = 0; i < session->cmds_max; i++) {
		struct iscsi_task *task = session->cmds[i];
		struct qedi_cmd *cmd = task->dd_data;

		task->hdr = &cmd->hdr;
		task->hdr_max = sizeof(struct iscsi_hdr);

		if (FUNC1(qedi, session, cmd))
			goto free_sgets;

		cmd->sense_buffer = FUNC0(&qedi->pdev->dev,
						       SCSI_SENSE_BUFFERSIZE,
						       &cmd->sense_buffer_dma,
						       GFP_KERNEL);
		if (!cmd->sense_buffer)
			goto free_sgets;
	}

	return 0;

free_sgets:
	FUNC2(qedi, session);
	return -ENOMEM;
}