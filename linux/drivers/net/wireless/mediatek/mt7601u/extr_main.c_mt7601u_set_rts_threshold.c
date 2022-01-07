
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int MT_TX_RTS_CFG ;
 int MT_TX_RTS_CFG_THRESH ;
 int mt76_rmw_field (struct mt7601u_dev*,int ,int ,int ) ;

__attribute__((used)) static int mt7601u_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct mt7601u_dev *dev = hw->priv;

 mt76_rmw_field(dev, MT_TX_RTS_CFG, MT_TX_RTS_CFG_THRESH, value);

 return 0;
}
