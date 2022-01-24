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
struct rtw_hal {int current_band_width; int current_channel; scalar_t__ current_band_type; int /*<<< orphan*/ * cch_by_bw; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_hal hal; struct ieee80211_hw* hw; } ;
struct rtw_chip_info {TYPE_2__* ops; } ;
struct rtw_channel_params {scalar_t__ center_chan; int bandwidth; int primary_chan_idx; int /*<<< orphan*/ * cch_by_bw; } ;
struct TYPE_3__ {int /*<<< orphan*/  chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_channel ) (struct rtw_dev*,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COEX_SWITCH_TO_24G ; 
 int /*<<< orphan*/  COEX_SWITCH_TO_24G_NOFORSCAN ; 
 int /*<<< orphan*/  COEX_SWITCH_TO_5G ; 
 scalar_t__ RTW_BAND_2G ; 
 scalar_t__ RTW_BAND_5G ; 
 int RTW_CHANNEL_WIDTH_20 ; 
 int /*<<< orphan*/  RTW_FLAG_SCANNING ; 
 int RTW_MAX_CHANNEL_WIDTH ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rtw_channel_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int,int) ; 

void FUNC6(struct rtw_dev *rtwdev)
{
	struct ieee80211_hw *hw = rtwdev->hw;
	struct rtw_hal *hal = &rtwdev->hal;
	struct rtw_chip_info *chip = rtwdev->chip;
	struct rtw_channel_params ch_param;
	u8 center_chan, bandwidth, primary_chan_idx;
	u8 i;

	FUNC3(&hw->conf.chandef, &ch_param);
	if (FUNC0(ch_param.center_chan == 0, "Invalid channel\n"))
		return;

	center_chan = ch_param.center_chan;
	bandwidth = ch_param.bandwidth;
	primary_chan_idx = ch_param.primary_chan_idx;

	hal->current_band_width = bandwidth;
	hal->current_channel = center_chan;
	hal->current_band_type = center_chan > 14 ? RTW_BAND_5G : RTW_BAND_2G;

	for (i = RTW_CHANNEL_WIDTH_20; i <= RTW_MAX_CHANNEL_WIDTH; i++)
		hal->cch_by_bw[i] = ch_param.cch_by_bw[i];

	chip->ops->set_channel(rtwdev, center_chan, bandwidth, primary_chan_idx);

	if (hal->current_band_type == RTW_BAND_5G) {
		FUNC1(rtwdev, COEX_SWITCH_TO_5G);
	} else {
		if (FUNC2(rtwdev, RTW_FLAG_SCANNING))
			FUNC1(rtwdev, COEX_SWITCH_TO_24G);
		else
			FUNC1(rtwdev, COEX_SWITCH_TO_24G_NOFORSCAN);
	}

	FUNC4(rtwdev, center_chan);
}