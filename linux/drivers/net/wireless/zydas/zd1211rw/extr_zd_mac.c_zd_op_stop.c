
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct zd_chip {int dummy; } ;
struct zd_mac {int flags; struct sk_buff_head ack_wait_queue; struct zd_chip chip; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ZD_DEVICE_RUNNING ;
 int beacon_disable (struct zd_mac*) ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int flush_workqueue (int ) ;
 int housekeeping_disable (struct zd_mac*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int zd_chip_disable_hwint (struct zd_chip*) ;
 int zd_chip_disable_int (struct zd_chip*) ;
 int zd_chip_disable_rxtx (struct zd_chip*) ;
 int zd_chip_switch_radio_off (struct zd_chip*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_workqueue ;

void zd_op_stop(struct ieee80211_hw *hw)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 struct zd_chip *chip = &mac->chip;
 struct sk_buff *skb;
 struct sk_buff_head *ack_wait_queue = &mac->ack_wait_queue;

 clear_bit(ZD_DEVICE_RUNNING, &mac->flags);






 zd_chip_disable_rxtx(chip);
 beacon_disable(mac);
 housekeeping_disable(mac);
 flush_workqueue(zd_workqueue);

 zd_chip_disable_hwint(chip);
 zd_chip_switch_radio_off(chip);
 zd_chip_disable_int(chip);


 while ((skb = skb_dequeue(ack_wait_queue)))
  dev_kfree_skb_any(skb);
}
