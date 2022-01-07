
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;


 int BW_SETTING ;
 int mt76x02_mcu_function_select (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void
mt76x0_phy_bbp_set_bw(struct mt76x02_dev *dev, enum nl80211_chan_width width)
{
 enum { BW_20 = 0, BW_40 = 1, BW_80 = 2, BW_10 = 4};
 int bw;

 switch (width) {
 default:
 case 132:
 case 133:
  bw = BW_20;
  break;
 case 131:
  bw = BW_40;
  break;
 case 129:
  bw = BW_80;
  break;
 case 135:
  bw = BW_10;
  break;
 case 128:
 case 134:
 case 130:

  return;
 }

 mt76x02_mcu_function_select(dev, BW_SETTING, bw);
}
