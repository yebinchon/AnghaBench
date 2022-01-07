
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int rx; int conf_mutex; int default_ant; int flags; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct rt2x00_dev* priv; } ;


 int DEVICE_STATE_PRESENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00lib_config (struct rt2x00_dev*,struct ieee80211_conf*,int ) ;
 int rt2x00lib_config_antenna (struct rt2x00_dev*,int ) ;
 int rt2x00queue_start_queue (int ) ;
 int rt2x00queue_stop_queue (int ) ;
 int test_bit (int ,int *) ;

int rt2x00mac_config(struct ieee80211_hw *hw, u32 changed)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;





 if (!test_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
  return 0;
 rt2x00queue_stop_queue(rt2x00dev->rx);


 mutex_lock(&rt2x00dev->conf_mutex);





 rt2x00lib_config(rt2x00dev, conf, changed);
 rt2x00lib_config_antenna(rt2x00dev, rt2x00dev->default_ant);

 mutex_unlock(&rt2x00dev->conf_mutex);


 rt2x00queue_start_queue(rt2x00dev->rx);

 return 0;
}
