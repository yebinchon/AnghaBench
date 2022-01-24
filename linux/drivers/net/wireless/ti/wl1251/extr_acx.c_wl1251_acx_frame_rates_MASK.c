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
typedef  void* u8 ;
struct wl1251 {int dummy; } ;
struct acx_fw_gen_frame_rates {void* tx_mgt_frame_mod; void* tx_mgt_frame_rate; void* tx_ctrl_frame_mod; void* tx_ctrl_frame_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_FW_GEN_FRAME_RATES ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_fw_gen_frame_rates*) ; 
 struct acx_fw_gen_frame_rates* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_fw_gen_frame_rates*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1251 *wl, u8 ctrl_rate, u8 ctrl_mod,
			   u8 mgt_rate, u8 mgt_mod)
{
	struct acx_fw_gen_frame_rates *rates;
	int ret;

	FUNC3(DEBUG_ACX, "acx frame rates");

	rates = FUNC1(sizeof(*rates), GFP_KERNEL);
	if (!rates)
		return -ENOMEM;

	rates->tx_ctrl_frame_rate = ctrl_rate;
	rates->tx_ctrl_frame_mod = ctrl_mod;
	rates->tx_mgt_frame_rate = mgt_rate;
	rates->tx_mgt_frame_mod = mgt_mod;

	ret = FUNC2(wl, ACX_FW_GEN_FRAME_RATES,
				   rates, sizeof(*rates));
	if (ret < 0) {
		FUNC4("Failed to set FW rates and modulation");
		goto out;
	}

out:
	FUNC0(rates);
	return ret;
}