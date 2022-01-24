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
struct mlme_ext_info {int /*<<< orphan*/  state; } ;
struct mlme_ext_priv {int /*<<< orphan*/  link_timer; int /*<<< orphan*/  cur_bwmode; int /*<<< orphan*/  cur_ch_offset; int /*<<< orphan*/  cur_channel; struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HAL_PRIME_CHNL_OFFSET_DONT_CARE ; 
 int /*<<< orphan*/  HT_CHANNEL_WIDTH_20 ; 
 int /*<<< orphan*/  HW_VAR_BSSID ; 
 int /*<<< orphan*/  HW_VAR_MLME_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_FW_NULL_STATE ; 
 int /*<<< orphan*/  _HW_STATE_STATION_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/ * null_addr ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC8(struct adapter *padapter)
{
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

	if (FUNC4(padapter) || FUNC3(padapter)) {
		FUNC5(padapter, HW_VAR_MLME_DISCONNECT, NULL);
		FUNC5(padapter, HW_VAR_BSSID, null_addr);

		/* restore to initial setting. */
		FUNC7(padapter, padapter->registrypriv.wireless_mode);

		/* switch to the 20M Hz mode after disconnect */
		pmlmeext->cur_bwmode = HT_CHANNEL_WIDTH_20;
		pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

		/* SelectChannel(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset); */
		FUNC6(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);

		FUNC2(padapter);

		pmlmeinfo->state = WIFI_FW_NULL_STATE;

		/* set MSR to no link state -> infra. mode */
		FUNC0(padapter, _HW_STATE_STATION_);

		FUNC1(&pmlmeext->link_timer);
	}
}