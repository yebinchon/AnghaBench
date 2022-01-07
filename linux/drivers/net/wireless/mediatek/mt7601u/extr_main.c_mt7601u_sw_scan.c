
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int state; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int MT7601U_STATE_SCANNING ;
 int mt7601u_agc_save (struct mt7601u_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
mt7601u_sw_scan(struct ieee80211_hw *hw,
  struct ieee80211_vif *vif,
  const u8 *mac_addr)
{
 struct mt7601u_dev *dev = hw->priv;

 mt7601u_agc_save(dev);
 set_bit(MT7601U_STATE_SCANNING, &dev->state);
}
