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
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int DSConfig; int /*<<< orphan*/  ATIMWindow; scalar_t__ BeaconPeriod; } ;
struct TYPE_3__ {int SsidLength; int* Ssid; } ;
struct wlan_bssid_ex {int* IEs; int* SupportedRates; TYPE_2__ Configuration; TYPE_1__ Ssid; scalar_t__ Privacy; } ;
struct registry_priv {scalar_t__ preamble; int wireless_mode; int ht_enable; struct wlan_bssid_ex dev_network; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ PREAMBLE_SHORT ; 
 int WIRELESS_11ABGN ; 
 int WIRELESS_11A_5N ; 
 int WIRELESS_11BG_24N ; 
 int WIRELESS_11_24N ; 
 int WIRELESS_11_5N ; 
 int /*<<< orphan*/  _DSSET_IE_ ; 
 int /*<<< orphan*/  _EXT_SUPPORTEDRATES_IE_ ; 
 int /*<<< orphan*/  _IBSS_PARA_IE_ ; 
 int /*<<< orphan*/  _SSID_IE_ ; 
 int /*<<< orphan*/  _SUPPORTEDRATES_IE_ ; 
 scalar_t__ cap_IBSS ; 
 scalar_t__ cap_Privacy ; 
 scalar_t__ cap_ShortPremble ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int*) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

int FUNC4(struct registry_priv *pregistrypriv)
{
	u8 wireless_mode;
	int	sz = 0, rateLen;
	struct wlan_bssid_ex *pdev_network = &pregistrypriv->dev_network;
	u8 *ie = pdev_network->IEs;

	/* timestamp will be inserted by hardware */
	sz += 8;
	ie += sz;

	/* beacon interval : 2bytes */
	*(__le16 *)ie = FUNC0((u16)pdev_network->Configuration.BeaconPeriod);/* BCN_INTERVAL; */
	sz += 2;
	ie += 2;

	/* capability info */
	*(u16 *)ie = 0;

	*(__le16 *)ie |= FUNC0(cap_IBSS);

	if (pregistrypriv->preamble == PREAMBLE_SHORT)
		*(__le16 *)ie |= FUNC0(cap_ShortPremble);

	if (pdev_network->Privacy)
		*(__le16 *)ie |= FUNC0(cap_Privacy);

	sz += 2;
	ie += 2;

	/* SSID */
	ie = FUNC2(ie, _SSID_IE_, pdev_network->Ssid.SsidLength, pdev_network->Ssid.Ssid, &sz);

	/* supported rates */
	if (pregistrypriv->wireless_mode == WIRELESS_11ABGN) {
		if (pdev_network->Configuration.DSConfig > 14)
			wireless_mode = WIRELESS_11A_5N;
		else
			wireless_mode = WIRELESS_11BG_24N;
	} else {
		wireless_mode = pregistrypriv->wireless_mode;
	}

	FUNC3(pdev_network->SupportedRates, wireless_mode);

	rateLen = FUNC1(pdev_network->SupportedRates);

	if (rateLen > 8) {
		ie = FUNC2(ie, _SUPPORTEDRATES_IE_, 8, pdev_network->SupportedRates, &sz);
		/* ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
	} else {
		ie = FUNC2(ie, _SUPPORTEDRATES_IE_, rateLen, pdev_network->SupportedRates, &sz);
	}

	/* DS parameter set */
	ie = FUNC2(ie, _DSSET_IE_, 1, (u8 *)&(pdev_network->Configuration.DSConfig), &sz);

	/* IBSS Parameter Set */

	ie = FUNC2(ie, _IBSS_PARA_IE_, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);

	if (rateLen > 8) {
		ie = FUNC2(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
	}

	/* HT Cap. */
	if (((pregistrypriv->wireless_mode&WIRELESS_11_5N) || (pregistrypriv->wireless_mode&WIRELESS_11_24N))
		&& (pregistrypriv->ht_enable == true)) {
		/* todo: */
	}

	/* pdev_network->IELength =  sz; update IELength */

	/* return _SUCCESS; */

	return sz;
}