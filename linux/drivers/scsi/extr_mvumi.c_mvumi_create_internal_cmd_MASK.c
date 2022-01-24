#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mvumi_hba {int /*<<< orphan*/  ib_max_size; TYPE_1__* pdev; } ;
struct mvumi_cmd {TYPE_2__* frame; int /*<<< orphan*/  frame_phys; int /*<<< orphan*/  queue_pointer; } ;
struct TYPE_5__ {scalar_t__ sg_counts; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvumi_cmd*) ; 
 struct mvumi_cmd* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mvumi_hba*,struct mvumi_cmd*,unsigned int) ; 

__attribute__((used)) static struct mvumi_cmd *FUNC7(struct mvumi_hba *mhba,
				unsigned int buf_size)
{
	struct mvumi_cmd *cmd;

	cmd = FUNC5(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		FUNC1(&mhba->pdev->dev, "failed to create a internal cmd\n");
		return NULL;
	}
	FUNC0(&cmd->queue_pointer);

	cmd->frame = FUNC2(&mhba->pdev->dev, mhba->ib_max_size,
			&cmd->frame_phys, GFP_KERNEL);
	if (!cmd->frame) {
		FUNC1(&mhba->pdev->dev, "failed to allocate memory for FW"
			" frame,size = %d.\n", mhba->ib_max_size);
		FUNC4(cmd);
		return NULL;
	}

	if (buf_size) {
		if (FUNC6(mhba, cmd, buf_size)) {
			FUNC1(&mhba->pdev->dev, "failed to allocate memory"
						" for internal frame\n");
			FUNC3(&mhba->pdev->dev, mhba->ib_max_size,
					cmd->frame, cmd->frame_phys);
			FUNC4(cmd);
			return NULL;
		}
	} else
		cmd->frame->sg_counts = 0;

	return cmd;
}