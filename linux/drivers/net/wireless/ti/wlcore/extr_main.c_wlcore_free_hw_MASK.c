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
struct wl1271 {int fwlog_size; int /*<<< orphan*/  hw; int /*<<< orphan*/ * priv; int /*<<< orphan*/  freezable_wq; int /*<<< orphan*/ * tx_res_if; int /*<<< orphan*/ * fw_status; int /*<<< orphan*/ * raw_fw_status; int /*<<< orphan*/ * nvs; int /*<<< orphan*/  fw_type; int /*<<< orphan*/ * fw; int /*<<< orphan*/  aggr_buf_size; scalar_t__ aggr_buf; int /*<<< orphan*/  dummy_packet; scalar_t__ fwlog; int /*<<< orphan*/ * mbox; int /*<<< orphan*/ * buffer_32; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL12XX_FW_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*) ; 

int FUNC12(struct wl1271 *wl)
{
	/* Unblock any fwlog readers */
	FUNC7(&wl->mutex);
	wl->fwlog_size = -1;
	FUNC8(&wl->mutex);

	FUNC11(wl);

	FUNC6(wl->buffer_32);
	FUNC6(wl->mbox);
	FUNC2((unsigned long)wl->fwlog);
	FUNC1(wl->dummy_packet);
	FUNC3((unsigned long)wl->aggr_buf, FUNC4(wl->aggr_buf_size));

	FUNC10(wl);

	FUNC9(wl->fw);
	wl->fw = NULL;
	wl->fw_type = WL12XX_FW_TYPE_NONE;
	FUNC6(wl->nvs);
	wl->nvs = NULL;

	FUNC6(wl->raw_fw_status);
	FUNC6(wl->fw_status);
	FUNC6(wl->tx_res_if);
	FUNC0(wl->freezable_wq);

	FUNC6(wl->priv);
	FUNC5(wl->hw);

	return 0;
}