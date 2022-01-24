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
struct TYPE_2__ {int /*<<< orphan*/  len_op; int /*<<< orphan*/  cmd_id; } ;
struct tcmu_mailbox {scalar_t__ cmd_tail; scalar_t__ cmd_head; TYPE_1__ hdr; } ;
struct tcmu_dev {scalar_t__ cmdr_last_cleaned; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  inflight_queue; scalar_t__ cmd_time_out; int /*<<< orphan*/  qfull_queue; int /*<<< orphan*/  cmdr_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  commands; struct tcmu_mailbox* mb_addr; } ;
struct tcmu_cmd_entry {scalar_t__ cmd_tail; scalar_t__ cmd_head; TYPE_1__ hdr; } ;
struct tcmu_cmd {int dummy; } ;

/* Variables and functions */
 int CMDR_OFF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TCMU_DEV_BIT_BROKEN ; 
 scalar_t__ TCMU_OP_CMD ; 
 scalar_t__ TCMU_OP_PAD ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_db_count ; 
 struct tcmu_cmd* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tcmu_mailbox*,int) ; 
 scalar_t__ tcmu_global_max_blocks ; 
 int /*<<< orphan*/  FUNC11 (struct tcmu_cmd*,struct tcmu_mailbox*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcmu_unmap_work ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC16(struct tcmu_dev *udev)
{
	struct tcmu_mailbox *mb;
	struct tcmu_cmd *cmd;
	int handled = 0;

	if (FUNC15(TCMU_DEV_BIT_BROKEN, &udev->flags)) {
		FUNC7("ring broken, not handling completions\n");
		return 0;
	}

	mb = udev->mb_addr;
	FUNC10(mb, sizeof(*mb));

	while (udev->cmdr_last_cleaned != FUNC0(mb->cmd_tail)) {

		struct tcmu_cmd_entry *entry = (void *) mb + CMDR_OFF + udev->cmdr_last_cleaned;

		FUNC10(entry, sizeof(*entry));

		if (FUNC13(entry->hdr.len_op) == TCMU_OP_PAD) {
			FUNC1(udev->cmdr_last_cleaned,
				    FUNC12(entry->hdr.len_op),
				    udev->cmdr_size);
			continue;
		}
		FUNC2(FUNC13(entry->hdr.len_op) != TCMU_OP_CMD);

		cmd = FUNC5(&udev->commands, entry->hdr.cmd_id);
		if (!cmd) {
			FUNC7("cmd_id %u not found, ring is broken\n",
			       entry->hdr.cmd_id);
			FUNC9(TCMU_DEV_BIT_BROKEN, &udev->flags);
			break;
		}

		FUNC11(cmd, entry);

		FUNC1(udev->cmdr_last_cleaned,
			    FUNC12(entry->hdr.len_op),
			    udev->cmdr_size);

		handled++;
	}

	if (mb->cmd_tail == mb->cmd_head) {
		/* no more pending commands */
		FUNC4(&udev->cmd_timer);

		if (FUNC6(&udev->qfull_queue)) {
			/*
			 * no more pending or waiting commands so try to
			 * reclaim blocks if needed.
			 */
			if (FUNC3(&global_db_count) >
			    tcmu_global_max_blocks)
				FUNC8(&tcmu_unmap_work, 0);
		}
	} else if (udev->cmd_time_out) {
		FUNC14(&udev->inflight_queue, &udev->cmd_timer);
	}

	return handled;
}