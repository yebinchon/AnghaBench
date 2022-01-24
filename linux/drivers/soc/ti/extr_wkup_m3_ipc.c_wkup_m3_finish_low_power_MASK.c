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
struct wkup_m3_ipc {int /*<<< orphan*/  state; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_IPC_DEFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  IPC_CMD_RESET ; 
 int /*<<< orphan*/  M3_STATE_MSG_FOR_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wkup_m3_ipc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wkup_m3_ipc*) ; 
 int FUNC3 (struct wkup_m3_ipc*) ; 

__attribute__((used)) static int FUNC4(struct wkup_m3_ipc *m3_ipc)
{
	struct device *dev = m3_ipc->dev;
	int ret = 0;

	if (!FUNC2(m3_ipc))
		return -ENODEV;

	FUNC1(m3_ipc, IPC_CMD_RESET, 1);
	FUNC1(m3_ipc, DS_IPC_DEFAULT, 2);

	m3_ipc->state = M3_STATE_MSG_FOR_RESET;

	ret = FUNC3(m3_ipc);
	if (ret) {
		FUNC0(dev, "Unable to ping CM3\n");
		return ret;
	}

	return 0;
}