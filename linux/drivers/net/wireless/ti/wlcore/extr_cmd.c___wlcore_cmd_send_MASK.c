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
typedef  scalar_t__ u16 ;
struct wl1271_cmd_header {scalar_t__ status; int /*<<< orphan*/  id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  cmd_box_addr; TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int (* trigger_cmd ) (struct wl1271*,int /*<<< orphan*/ ,void*,size_t) ;} ;

/* Variables and functions */
 scalar_t__ CMD_STOP_FWLOGGER ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  REG_INTERRUPT_ACK ; 
 int /*<<< orphan*/  REG_INTERRUPT_NO_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int WL1271_ACX_INTR_CMD_COMPLETE ; 
 scalar_t__ WL1271_CMD_FAST_POLL_COUNT ; 
 int /*<<< orphan*/  WL1271_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  WL1271_FLAG_IN_ELP ; 
 scalar_t__ WLCORE_STATE_RESTARTING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_header*,size_t,int) ; 
 int FUNC13 (struct wl1271*,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (struct wl1271*,int /*<<< orphan*/ ,void*,size_t,int) ; 
 int FUNC15 (struct wl1271*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct wl1271 *wl, u16 id, void *buf,
			     size_t len, size_t res_len)
{
	struct wl1271_cmd_header *cmd;
	unsigned long timeout;
	u32 intr;
	int ret;
	u16 status;
	u16 poll_count = 0;

	if (FUNC10(wl->state == WLCORE_STATE_RESTARTING &&
		     id != CMD_STOP_FWLOGGER))
		return -EIO;

	if (FUNC1(len < sizeof(*cmd)))
		return -EIO;

	cmd = buf;
	cmd->id = FUNC2(id);
	cmd->status = 0;

	FUNC0(len % 4 != 0);
	FUNC0(FUNC7(WL1271_FLAG_IN_ELP, &wl->flags));

	ret = FUNC14(wl, wl->cmd_box_addr, buf, len, false);
	if (ret < 0)
		return ret;

	/*
	 * TODO: we just need this because one bit is in a different
	 * place.  Is there any better way?
	 */
	ret = wl->ops->trigger_cmd(wl, wl->cmd_box_addr, buf, len);
	if (ret < 0)
		return ret;

	timeout = jiffies + FUNC4(WL1271_COMMAND_TIMEOUT);

	ret = FUNC13(wl, REG_INTERRUPT_NO_CLEAR, &intr);
	if (ret < 0)
		return ret;

	while (!(intr & WL1271_ACX_INTR_CMD_COMPLETE)) {
		if (FUNC8(jiffies, timeout)) {
			FUNC11("command complete timeout");
			return -ETIMEDOUT;
		}

		poll_count++;
		if (poll_count < WL1271_CMD_FAST_POLL_COUNT)
			FUNC9(10);
		else
			FUNC5(1);

		ret = FUNC13(wl, REG_INTERRUPT_NO_CLEAR, &intr);
		if (ret < 0)
			return ret;
	}

	/* read back the status code of the command */
	if (res_len == 0)
		res_len = sizeof(struct wl1271_cmd_header);

	ret = FUNC12(wl, wl->cmd_box_addr, cmd, res_len, false);
	if (ret < 0)
		return ret;

	status = FUNC3(cmd->status);

	ret = FUNC15(wl, REG_INTERRUPT_ACK,
			       WL1271_ACX_INTR_CMD_COMPLETE);
	if (ret < 0)
		return ret;

	return status;
}