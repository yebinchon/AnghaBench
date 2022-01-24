#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ ssid_length; int /*<<< orphan*/  ssid; } ;
struct wlan_bssid_ex {TYPE_1__ ssid; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  ies; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int WLAN_CAPABILITY_ESS ; 
 int WLAN_CAPABILITY_IBSS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst)
{
	u16 s_cap, d_cap;
	__le16 le_scap, le_dcap;

	FUNC2((u8 *)&le_scap, FUNC3(src->ies), 2);
	FUNC2((u8 *)&le_dcap, FUNC3(dst->ies), 2);

	s_cap = FUNC0(le_scap);
	d_cap = FUNC0(le_dcap);

	return ((src->ssid.ssid_length == dst->ssid.ssid_length) &&
		(!FUNC1(src->MacAddress, dst->MacAddress, ETH_ALEN)) &&
		(!FUNC1(src->ssid.ssid, dst->ssid.ssid, src->ssid.ssid_length)) &&
		((s_cap & WLAN_CAPABILITY_IBSS) ==
		(d_cap & WLAN_CAPABILITY_IBSS)) &&
		((s_cap & WLAN_CAPABILITY_ESS) ==
		(d_cap & WLAN_CAPABILITY_ESS)));
}