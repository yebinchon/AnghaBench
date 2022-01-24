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
struct wkup_m3_ipc {int resume_addr; int mem_type; int /*<<< orphan*/  state; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS_IPC_DEFAULT ; 
 int ENODEV ; 
 int IPC_CMD_DS0 ; 
 int IPC_CMD_IDLE ; 
 int IPC_CMD_STANDBY ; 
 int /*<<< orphan*/  M3_STATE_MSG_FOR_LP ; 
#define  WKUP_M3_DEEPSLEEP 130 
#define  WKUP_M3_IDLE 129 
#define  WKUP_M3_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wkup_m3_ipc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wkup_m3_ipc*) ; 
 int FUNC3 (struct wkup_m3_ipc*) ; 
 int FUNC4 (struct wkup_m3_ipc*) ; 

__attribute__((used)) static int FUNC5(struct wkup_m3_ipc *m3_ipc, int state)
{
	struct device *dev = m3_ipc->dev;
	int m3_power_state;
	int ret = 0;

	if (!FUNC2(m3_ipc))
		return -ENODEV;

	switch (state) {
	case WKUP_M3_DEEPSLEEP:
		m3_power_state = IPC_CMD_DS0;
		break;
	case WKUP_M3_STANDBY:
		m3_power_state = IPC_CMD_STANDBY;
		break;
	case WKUP_M3_IDLE:
		m3_power_state = IPC_CMD_IDLE;
		break;
	default:
		return 1;
	}

	/* Program each required IPC register then write defaults to others */
	FUNC1(m3_ipc, m3_ipc->resume_addr, 0);
	FUNC1(m3_ipc, m3_power_state, 1);
	FUNC1(m3_ipc, m3_ipc->mem_type, 4);

	FUNC1(m3_ipc, DS_IPC_DEFAULT, 2);
	FUNC1(m3_ipc, DS_IPC_DEFAULT, 3);
	FUNC1(m3_ipc, DS_IPC_DEFAULT, 5);
	FUNC1(m3_ipc, DS_IPC_DEFAULT, 6);
	FUNC1(m3_ipc, DS_IPC_DEFAULT, 7);

	m3_ipc->state = M3_STATE_MSG_FOR_LP;

	if (state == WKUP_M3_IDLE)
		ret = FUNC4(m3_ipc);
	else
		ret = FUNC3(m3_ipc);

	if (ret) {
		FUNC0(dev, "Unable to ping CM3\n");
		return ret;
	}

	return 0;
}