#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl1251_cmd_header {scalar_t__ status; int /*<<< orphan*/  id; } ;
struct wl1251 {int /*<<< orphan*/  cmd_box_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_REG_INTERRUPT_ACK ; 
 int /*<<< orphan*/  ACX_REG_INTERRUPT_NO_CLEAR ; 
 int /*<<< orphan*/  ACX_REG_INTERRUPT_TRIG ; 
 int ETIMEDOUT ; 
 int INTR_TRIG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WL1251_ACX_INTR_CMD_COMPLETE ; 
 int /*<<< orphan*/  WL1251_COMMAND_TIMEOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1251*,int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC6 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1251*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct wl1251 *wl, u16 id, void *buf, size_t len)
{
	struct wl1251_cmd_header *cmd;
	unsigned long timeout;
	u32 intr;
	int ret = 0;

	cmd = buf;
	cmd->id = id;
	cmd->status = 0;

	FUNC0(len % 4 != 0);

	FUNC5(wl, wl->cmd_box_addr, buf, len);

	FUNC7(wl, ACX_REG_INTERRUPT_TRIG, INTR_TRIG_CMD);

	timeout = jiffies + FUNC1(WL1251_COMMAND_TIMEOUT);

	intr = FUNC6(wl, ACX_REG_INTERRUPT_NO_CLEAR);
	while (!(intr & WL1251_ACX_INTR_CMD_COMPLETE)) {
		if (FUNC3(jiffies, timeout)) {
			FUNC4("command complete timeout");
			ret = -ETIMEDOUT;
			goto out;
		}

		FUNC2(1);

		intr = FUNC6(wl, ACX_REG_INTERRUPT_NO_CLEAR);
	}

	FUNC7(wl, ACX_REG_INTERRUPT_ACK,
			   WL1251_ACX_INTR_CMD_COMPLETE);

out:
	return ret;
}