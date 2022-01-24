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
struct wl1271 {int fw_status_len; void* raw_fw_status; void* fw_status; void* tx_res_if; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wl1271 *wl)
{
	wl->raw_fw_status = FUNC1(wl->fw_status_len, GFP_KERNEL);
	if (!wl->raw_fw_status)
		goto err;

	wl->fw_status = FUNC1(sizeof(*wl->fw_status), GFP_KERNEL);
	if (!wl->fw_status)
		goto err;

	wl->tx_res_if = FUNC1(sizeof(*wl->tx_res_if), GFP_KERNEL);
	if (!wl->tx_res_if)
		goto err;

	return 0;
err:
	FUNC0(wl->fw_status);
	FUNC0(wl->raw_fw_status);
	return -ENOMEM;
}