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
 int /*<<< orphan*/  CMD_CONFIGURE ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct acx_header*,size_t,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct wl1271 *wl, u16 id, void *buf,
				  size_t len, unsigned long valid_rets)
{
	struct acx_header *acx = buf;
	int ret;

	FUNC2(DEBUG_CMD, "cmd configure (%d)", id);

	if (FUNC0(len < sizeof(*acx)))
		return -EIO;

	acx->id = FUNC1(id);

	/* payload length, does not include any headers */
	acx->len = FUNC1(len - sizeof(*acx));

	ret = FUNC4(wl, CMD_CONFIGURE, acx, len, 0,
				       valid_rets);
	if (ret < 0) {
		FUNC3("CONFIGURE command NOK");
		return ret;
	}

	return ret;
}