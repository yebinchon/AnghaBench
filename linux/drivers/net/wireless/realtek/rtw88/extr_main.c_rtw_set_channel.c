
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtw_hal {int current_band_width; int current_channel; scalar_t__ current_band_type; int * cch_by_bw; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_hal hal; struct ieee80211_hw* hw; } ;
struct rtw_chip_info {TYPE_2__* ops; } ;
struct rtw_channel_params {scalar_t__ center_chan; int bandwidth; int primary_chan_idx; int * cch_by_bw; } ;
struct TYPE_3__ {int chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; } ;
struct TYPE_4__ {int (* set_channel ) (struct rtw_dev*,int,int,int) ;} ;


 int COEX_SWITCH_TO_24G ;
 int COEX_SWITCH_TO_24G_NOFORSCAN ;
 int COEX_SWITCH_TO_5G ;
 scalar_t__ RTW_BAND_2G ;
 scalar_t__ RTW_BAND_5G ;
 int RTW_CHANNEL_WIDTH_20 ;
 int RTW_FLAG_SCANNING ;
 int RTW_MAX_CHANNEL_WIDTH ;
 scalar_t__ WARN (int,char*) ;
 int rtw_coex_switchband_notify (struct rtw_dev*,int ) ;
 scalar_t__ rtw_flag_check (struct rtw_dev*,int ) ;
 int rtw_get_channel_params (int *,struct rtw_channel_params*) ;
 int rtw_phy_set_tx_power_level (struct rtw_dev*,int) ;
 int stub1 (struct rtw_dev*,int,int,int) ;

void rtw_set_channel(struct rtw_dev *rtwdev)
{
 struct ieee80211_hw *hw = rtwdev->hw;
 struct rtw_hal *hal = &rtwdev->hal;
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_channel_params ch_param;
 u8 center_chan, bandwidth, primary_chan_idx;
 u8 i;

 rtw_get_channel_params(&hw->conf.chandef, &ch_param);
 if (WARN(ch_param.center_chan == 0, "Invalid channel\n"))
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
  rtw_coex_switchband_notify(rtwdev, COEX_SWITCH_TO_5G);
 } else {
  if (rtw_flag_check(rtwdev, RTW_FLAG_SCANNING))
   rtw_coex_switchband_notify(rtwdev, COEX_SWITCH_TO_24G);
  else
   rtw_coex_switchband_notify(rtwdev, COEX_SWITCH_TO_24G_NOFORSCAN);
 }

 rtw_phy_set_tx_power_level(rtwdev, center_chan);
}
