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
struct wl1271 {int /*<<< orphan*/  tx_res_if; int /*<<< orphan*/  raw_fw_status; int /*<<< orphan*/  fw_status; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*) ; 
 int FUNC2 (struct wl1271*) ; 
 int FUNC3 (struct wl1271*,int) ; 
 int FUNC4 (struct wl1271*) ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl, bool plt)
{
	int ret = 0;

	ret = FUNC4(wl);
	if (ret < 0)
		goto out;

	/*
	 * For wl127x based devices we could use the default block
	 * size (512 bytes), but due to a bug in the sdio driver, we
	 * need to set it explicitly after the chip is powered on.  To
	 * simplify the code and since the performance impact is
	 * negligible, we use the same block size for all different
	 * chip types.
	 *
	 * Check if the bus supports blocksize alignment and, if it
	 * doesn't, make sure we don't have the quirk.
	 */
	if (!FUNC1(wl))
		wl->quirks &= ~WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN;

	/* TODO: make sure the lower driver has set things up correctly */

	ret = FUNC2(wl);
	if (ret < 0)
		goto out;

	ret = FUNC3(wl, plt);
	if (ret < 0) {
		FUNC0(wl->fw_status);
		FUNC0(wl->raw_fw_status);
		FUNC0(wl->tx_res_if);
	}

out:
	return ret;
}