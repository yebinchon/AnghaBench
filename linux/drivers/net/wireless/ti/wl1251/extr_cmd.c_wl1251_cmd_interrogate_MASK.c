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
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int /*<<< orphan*/  cmd_box_addr; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct acx_header {size_t len; TYPE_1__ cmd; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INTERROGATE ; 
 scalar_t__ CMD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ,struct acx_header*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1251*,int /*<<< orphan*/ ,void*,size_t) ; 

int FUNC4(struct wl1251 *wl, u16 id, void *buf, size_t len)
{
	struct acx_header *acx = buf;
	int ret;

	FUNC1(DEBUG_CMD, "cmd interrogate");

	acx->id = id;

	/* payload length, does not include any headers */
	acx->len = len - sizeof(*acx);

	ret = FUNC0(wl, CMD_INTERROGATE, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC2("INTERROGATE command failed");
		goto out;
	}

	/* the interrogate command got in, we can read the answer */
	FUNC3(wl, wl->cmd_box_addr, buf, len);

	acx = buf;
	if (acx->cmd.status != CMD_STATUS_SUCCESS)
		FUNC2("INTERROGATE command error: %d",
			     acx->cmd.status);

out:
	return ret;
}