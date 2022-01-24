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
struct scsi_cmnd {TYPE_1__* device; } ;
struct esp_target_data {int flags; scalar_t__ esp_offset; scalar_t__ esp_period; int /*<<< orphan*/  nego_goal_offset; int /*<<< orphan*/  nego_goal_period; } ;
struct esp_cmd_entry {struct scsi_cmnd* cmd; } ;
struct esp {int /*<<< orphan*/  host; int /*<<< orphan*/ * msg_out; int /*<<< orphan*/  msg_out_len; struct esp_target_data* target; struct esp_cmd_entry* active_cmd; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_CMD_RATN ; 
 int /*<<< orphan*/  ESP_CMD_SATN ; 
 int ESP_TGT_CHECK_NEGO ; 
 int ESP_TGT_NEGO_SYNC ; 
 int ESP_TGT_NEGO_WIDE ; 
 int ESP_TGT_WIDE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct esp_target_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*,struct esp_target_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct esp *esp)
{
	struct esp_cmd_entry *ent = esp->active_cmd;
	struct scsi_cmnd *cmd = ent->cmd;
	struct esp_target_data *tp;
	int tgt;

	tgt = cmd->device->id;
	tp = &esp->target[tgt];

	if (tp->flags & ESP_TGT_NEGO_WIDE) {
		tp->flags &= ~(ESP_TGT_NEGO_WIDE | ESP_TGT_WIDE);

		if (!FUNC0(tp)) {
			tp->flags &= ~ESP_TGT_CHECK_NEGO;
			FUNC3(esp, ESP_CMD_RATN);
		} else {
			esp->msg_out_len =
				FUNC5(&esp->msg_out[0],
						      tp->nego_goal_period,
						      tp->nego_goal_offset);
			tp->flags |= ESP_TGT_NEGO_SYNC;
			FUNC3(esp, ESP_CMD_SATN);
		}
		return;
	}

	if (tp->flags & ESP_TGT_NEGO_SYNC) {
		tp->flags &= ~(ESP_TGT_NEGO_SYNC | ESP_TGT_CHECK_NEGO);
		tp->esp_period = 0;
		tp->esp_offset = 0;
		FUNC2(esp, tp, 0, 0, 0, 0);
		FUNC3(esp, ESP_CMD_RATN);
		return;
	}

	FUNC4(KERN_INFO, esp->host, "Unexpected MESSAGE REJECT\n");
	FUNC1(esp);
}