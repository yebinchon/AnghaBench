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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int /*<<< orphan*/  ATIMWindow; int /*<<< orphan*/  DSConfig; int /*<<< orphan*/  BeaconPeriod; } ;
struct TYPE_3__ {int SsidLength; int /*<<< orphan*/ * Ssid; } ;
struct wlan_bssid_ex {TYPE_2__ Configuration; int /*<<< orphan*/ * rates; TYPE_1__ Ssid; scalar_t__ Privacy; int /*<<< orphan*/ * IEs; } ;
struct registry_priv {scalar_t__ preamble; int /*<<< orphan*/  wireless_mode; struct wlan_bssid_ex dev_network; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ PREAMBLE_SHORT ; 
 int /*<<< orphan*/  _DSSET_IE_ ; 
 int /*<<< orphan*/  _EXT_SUPPORTEDRATES_IE_ ; 
 int /*<<< orphan*/  _IBSS_PARA_IE_ ; 
 int /*<<< orphan*/  _SSID_IE_ ; 
 int /*<<< orphan*/  _SUPPORTEDRATES_IE_ ; 
 scalar_t__ cap_IBSS ; 
 scalar_t__ cap_Privacy ; 
 scalar_t__ cap_ShortPremble ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct registry_priv *registrypriv)
{
	int rate_len;
	uint sz = 0;
	struct wlan_bssid_ex *dev_network = &registrypriv->dev_network;
	u8 *ie = dev_network->IEs;
	u16 beaconPeriod = (u16)dev_network->Configuration.BeaconPeriod;

	/*timestamp will be inserted by hardware*/
	sz += 8;
	ie += sz;
	/*beacon interval : 2bytes*/
	*(__le16 *)ie = FUNC0(beaconPeriod);
	sz += 2;
	ie += 2;
	/*capability info*/
	*(u16 *)ie = 0;
	*(__le16 *)ie |= FUNC0(cap_IBSS);
	if (registrypriv->preamble == PREAMBLE_SHORT)
		*(__le16 *)ie |= FUNC0(cap_ShortPremble);
	if (dev_network->Privacy)
		*(__le16 *)ie |= FUNC0(cap_Privacy);
	sz += 2;
	ie += 2;
	/*SSID*/
	ie = FUNC2(ie, _SSID_IE_, dev_network->Ssid.SsidLength,
			  dev_network->Ssid.Ssid, &sz);
	/*supported rates*/
	FUNC3(dev_network->rates, registrypriv->wireless_mode);
	rate_len = FUNC1(dev_network->rates);
	if (rate_len > 8) {
		ie = FUNC2(ie, _SUPPORTEDRATES_IE_, 8,
				  dev_network->rates, &sz);
		ie = FUNC2(ie, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8),
				  (dev_network->rates + 8), &sz);
	} else {
		ie = FUNC2(ie, _SUPPORTEDRATES_IE_,
				  rate_len, dev_network->rates, &sz);
	}
	/*DS parameter set*/
	ie = FUNC2(ie, _DSSET_IE_, 1,
			  (u8 *)&dev_network->Configuration.DSConfig, &sz);
	/*IBSS Parameter Set*/
	ie = FUNC2(ie, _IBSS_PARA_IE_, 2,
			  (u8 *)&dev_network->Configuration.ATIMWindow, &sz);
	return sz;
}