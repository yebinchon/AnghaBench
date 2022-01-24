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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_4__ {scalar_t__ SsidLength; int /*<<< orphan*/  Ssid; } ;
struct TYPE_3__ {scalar_t__ DSConfig; } ;
struct wlan_bssid_ex {TYPE_2__ Ssid; int /*<<< orphan*/  MacAddress; TYPE_1__ Configuration; int /*<<< orphan*/  IEs; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int WLAN_CAPABILITY_BSS ; 
 int WLAN_CAPABILITY_IBSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wlan_bssid_ex *src,
			   struct wlan_bssid_ex *dst)
{
	u16 s_cap, d_cap;

	FUNC1((u8 *)&s_cap, FUNC2(src->IEs), 2);
	FUNC1((u8 *)&d_cap, FUNC2(dst->IEs), 2);
	return (src->Ssid.SsidLength == dst->Ssid.SsidLength) &&
			(src->Configuration.DSConfig ==
			dst->Configuration.DSConfig) &&
			((!FUNC0(src->MacAddress, dst->MacAddress,
			ETH_ALEN))) &&
			((!FUNC0(src->Ssid.Ssid,
			  dst->Ssid.Ssid,
			  src->Ssid.SsidLength))) &&
			((s_cap & WLAN_CAPABILITY_IBSS) ==
			(d_cap & WLAN_CAPABILITY_IBSS)) &&
			((s_cap & WLAN_CAPABILITY_BSS) ==
			(d_cap & WLAN_CAPABILITY_BSS));

}