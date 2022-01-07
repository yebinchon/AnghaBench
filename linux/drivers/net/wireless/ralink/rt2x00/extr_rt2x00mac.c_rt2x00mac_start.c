
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int DEVICE_STATE_PRESENT ;
 int rt2x00lib_start (struct rt2x00_dev*) ;
 int test_bit (int ,int *) ;

int rt2x00mac_start(struct ieee80211_hw *hw)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;

 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
  return 0;

 return rt2x00lib_start(rt2x00dev);
}
