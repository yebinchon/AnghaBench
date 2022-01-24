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
typedef  size_t u16 ;
struct wl1271 {int dummy; } ;
struct acx_header {void* len; void* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INTERROGATE ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 void* FUNC0 (size_t) ; 
 int FUNC1 (struct wl1271*,int /*<<< orphan*/ ,struct acx_header*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct wl1271 *wl, u16 id, void *buf,
			   size_t cmd_len, size_t res_len)
{
	struct acx_header *acx = buf;
	int ret;

	FUNC2(DEBUG_CMD, "cmd interrogate");

	acx->id = FUNC0(id);

	/* response payload length, does not include any headers */
	acx->len = FUNC0(res_len - sizeof(*acx));

	ret = FUNC1(wl, CMD_INTERROGATE, acx, cmd_len, res_len);
	if (ret < 0)
		FUNC3("INTERROGATE command failed");

	return ret;
}