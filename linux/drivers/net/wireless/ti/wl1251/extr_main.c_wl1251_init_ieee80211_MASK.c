#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wl1251 {scalar_t__ mac_addr; scalar_t__ use_eeprom; int /*<<< orphan*/ * nvs; TYPE_2__* hw; } ;
struct tx_double_buffer_desc {int dummy; } ;
struct TYPE_4__ {int queues; TYPE_1__* wiphy; scalar_t__ extra_tx_headroom; } ;
struct TYPE_3__ {int interface_modes; int max_scan_ssids; int /*<<< orphan*/ ** bands; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 size_t NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 scalar_t__ WL1251_TKIP_IV_SPACE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int const*,int) ; 
 int /*<<< orphan*/  wl1251_band_2ghz ; 
 int /*<<< orphan*/  FUNC5 (struct wl1251*) ; 
 int FUNC6 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct wl1251*) ; 
 int FUNC9 (struct wl1251*) ; 
 int FUNC10 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1251*) ; 

int FUNC13(struct wl1251 *wl)
{
	int ret;

	/* The tx descriptor buffer and the TKIP space */
	wl->hw->extra_tx_headroom = sizeof(struct tx_double_buffer_desc)
		+ WL1251_TKIP_IV_SPACE;

	/* unit us */
	/* FIXME: find a proper value */

	FUNC2(wl->hw, SIGNAL_DBM);
	FUNC2(wl->hw, SUPPORTS_PS);

	wl->hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION) |
					 FUNC0(NL80211_IFTYPE_ADHOC);
	wl->hw->wiphy->max_scan_ssids = 1;
	wl->hw->wiphy->bands[NL80211_BAND_2GHZ] = &wl1251_band_2ghz;

	wl->hw->queues = 4;

	if (wl->nvs == NULL && !wl->use_eeprom) {
		ret = FUNC6(wl);
		if (ret < 0)
			goto out;
	}

	if (wl->use_eeprom)
		ret = FUNC8(wl);
	else
		ret = FUNC9(wl);

	if (ret == 0 && !FUNC3(wl->mac_addr))
		ret = -EINVAL;

	if (ret < 0) {
		/*
		 * In case our MAC address is not correctly set,
		 * we use a random but Nokia MAC.
		 */
		static const u8 nokia_oui[3] = {0x00, 0x1f, 0xdf};
		FUNC4(wl->mac_addr, nokia_oui, 3);
		FUNC1(wl->mac_addr + 3, 3);
		if (!wl->use_eeprom)
			FUNC12(wl);
		FUNC11("MAC address in eeprom or nvs data is not valid");
		FUNC11("Setting random MAC address: %pM", wl->mac_addr);
	}

	ret = FUNC10(wl);
	if (ret)
		goto out;

	FUNC5(wl);
	FUNC7("initialized");

	ret = 0;

out:
	return ret;
}