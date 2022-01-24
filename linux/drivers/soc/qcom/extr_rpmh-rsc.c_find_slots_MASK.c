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
struct tcs_request {int num_cmds; TYPE_1__* cmds; } ;
struct tcs_group {int num_tcs; int ncpt; int offset; int /*<<< orphan*/ * cmd_cache; int /*<<< orphan*/  slots; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_TCS_SLOTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct tcs_group*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(struct tcs_group *tcs, const struct tcs_request *msg,
		      int *tcs_id, int *cmd_id)
{
	int slot, offset;
	int i = 0;

	/* Find if we already have the msg in our TCS */
	slot = FUNC2(tcs, msg->cmds, msg->num_cmds);
	if (slot >= 0)
		goto copy_data;

	/* Do over, until we can fit the full payload in a TCS */
	do {
		slot = FUNC0(tcs->slots, MAX_TCS_SLOTS,
						  i, msg->num_cmds, 0);
		if (slot >= tcs->num_tcs * tcs->ncpt)
			return -ENOMEM;
		i += tcs->ncpt;
	} while (slot + msg->num_cmds - 1 >= i);

copy_data:
	FUNC1(tcs->slots, slot, msg->num_cmds);
	/* Copy the addresses of the resources over to the slots */
	for (i = 0; i < msg->num_cmds; i++)
		tcs->cmd_cache[slot + i] = msg->cmds[i].addr;

	offset = slot / tcs->ncpt;
	*tcs_id = offset + tcs->offset;
	*cmd_id = slot % tcs->ncpt;

	return 0;
}