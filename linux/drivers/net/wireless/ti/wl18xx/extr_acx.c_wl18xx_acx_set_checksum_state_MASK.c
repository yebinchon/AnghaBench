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
struct wl18xx_acx_checksum_state {int /*<<< orphan*/  checksum_state; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CSUM_CONFIG ; 
 int /*<<< orphan*/  CHECKSUM_OFFLOAD_ENABLED ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl18xx_acx_checksum_state*) ; 
 struct wl18xx_acx_checksum_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_acx_checksum_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl)
{
	struct wl18xx_acx_checksum_state *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx checksum state");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->checksum_state = CHECKSUM_OFFLOAD_ENABLED;

	ret = FUNC2(wl, ACX_CSUM_CONFIG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("failed to set Tx checksum state: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}