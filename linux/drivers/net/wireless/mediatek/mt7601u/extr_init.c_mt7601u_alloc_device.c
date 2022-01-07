
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int stat_wq; int tx_skb_done; int avg_ampdu_len; int con_mon_lock; int mac_lock; int lock; int rx_lock; int tx_lock; int mutex; int hw_atomic_mutex; int reg_atomic_mutex; int vendor_req_mutex; struct ieee80211_hw* hw; struct device* dev; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct device {int dummy; } ;


 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int mt7601u_ops ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

struct mt7601u_dev *mt7601u_alloc_device(struct device *pdev)
{
 struct ieee80211_hw *hw;
 struct mt7601u_dev *dev;

 hw = ieee80211_alloc_hw(sizeof(*dev), &mt7601u_ops);
 if (!hw)
  return ((void*)0);

 dev = hw->priv;
 dev->dev = pdev;
 dev->hw = hw;
 mutex_init(&dev->vendor_req_mutex);
 mutex_init(&dev->reg_atomic_mutex);
 mutex_init(&dev->hw_atomic_mutex);
 mutex_init(&dev->mutex);
 spin_lock_init(&dev->tx_lock);
 spin_lock_init(&dev->rx_lock);
 spin_lock_init(&dev->lock);
 spin_lock_init(&dev->mac_lock);
 spin_lock_init(&dev->con_mon_lock);
 atomic_set(&dev->avg_ampdu_len, 1);
 skb_queue_head_init(&dev->tx_skb_done);

 dev->stat_wq = alloc_workqueue("mt7601u", WQ_UNBOUND, 0);
 if (!dev->stat_wq) {
  ieee80211_free_hw(hw);
  return ((void*)0);
 }

 return dev;
}
