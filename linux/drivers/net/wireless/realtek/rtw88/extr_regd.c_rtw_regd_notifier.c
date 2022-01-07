
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct rtw_hal {int current_channel; } ;
struct TYPE_2__ {int txpwr_regd; int chplan; } ;
struct rtw_dev {TYPE_1__ regd; struct rtw_hal hal; } ;
struct regulatory_request {int initiator; int * alpha2; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int RTW_DBG_REGD ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int ,int ,int ,int ,int ) ;
 int rtw_phy_set_tx_power_level (struct rtw_dev*,int ) ;
 int rtw_regd_notifier_apply (struct rtw_dev*,struct wiphy*,struct regulatory_request*) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

void rtw_regd_notifier(struct wiphy *wiphy, struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_hal *hal = &rtwdev->hal;

 rtw_regd_notifier_apply(rtwdev, wiphy, request);
 rtw_dbg(rtwdev, RTW_DBG_REGD,
  "get alpha2 %c%c from initiator %d, mapping to chplan 0x%x, txregd %d\n",
  request->alpha2[0], request->alpha2[1], request->initiator,
  rtwdev->regd.chplan, rtwdev->regd.txpwr_regd);

 rtw_phy_set_tx_power_level(rtwdev, hal->current_channel);
}
