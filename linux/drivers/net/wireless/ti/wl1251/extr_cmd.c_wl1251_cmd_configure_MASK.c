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
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int dummy; } ;
struct acx_header {size_t len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CONFIGURE ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ,struct acx_header*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct wl1251 *wl, u16 id, void *buf, size_t len)
{
	struct acx_header *acx = buf;
	int ret;

	FUNC1(DEBUG_CMD, "cmd configure");

	acx->id = id;

	/* payload length, does not include any headers */
	acx->len = len - sizeof(*acx);

	ret = FUNC0(wl, CMD_CONFIGURE, acx, len);
	if (ret < 0) {
		FUNC2("CONFIGURE command NOK");
		return ret;
	}

	return 0;
}