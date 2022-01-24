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
typedef  size_t u8 ;
struct wl1271 {size_t hw_tx_rate_tbl_size; size_t** band_rate_to_idx; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t CONF_HW_RXTX_RATE_UNSUPPORTED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 

u8 FUNC3(struct wl1271 *wl, u8 rate, enum nl80211_band band)
{
	u8 idx;

	FUNC0(band >= 2);

	if (FUNC1(rate >= wl->hw_tx_rate_tbl_size)) {
		FUNC2("Illegal RX rate from HW: %d", rate);
		return 0;
	}

	idx = wl->band_rate_to_idx[band][rate];
	if (FUNC1(idx == CONF_HW_RXTX_RATE_UNSUPPORTED)) {
		FUNC2("Unsupported RX rate from HW: %d", rate);
		return 0;
	}

	return idx;
}