
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int adjusting; int work; scalar_t__ enabled; int freq; } ;
struct mt7601u_dev {TYPE_2__ freq_cal; int hw; TYPE_1__* ee; int con_mon_lock; int bcn_freq_off; int avg_rssi; int ap_bssid; } ;
struct ieee80211_bss_conf {scalar_t__ assoc; int bssid; } ;
struct TYPE_3__ {int rf_freq_off; } ;


 int MT_FREQ_CAL_INIT_DELAY ;
 int MT_FREQ_OFFSET_INVALID ;
 int cancel_delayed_work_sync (int *) ;
 int ether_addr_copy (int ,int ) ;
 int ewma_rssi_init (int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mt7601u_phy_con_cal_onoff(struct mt7601u_dev *dev,
          struct ieee80211_bss_conf *info)
{
 if (!info->assoc)
  cancel_delayed_work_sync(&dev->freq_cal.work);


 spin_lock_bh(&dev->con_mon_lock);
 ether_addr_copy(dev->ap_bssid, info->bssid);
 ewma_rssi_init(&dev->avg_rssi);
 dev->bcn_freq_off = MT_FREQ_OFFSET_INVALID;
 spin_unlock_bh(&dev->con_mon_lock);

 dev->freq_cal.freq = dev->ee->rf_freq_off;
 dev->freq_cal.enabled = info->assoc;
 dev->freq_cal.adjusting = 0;

 if (info->assoc)
  ieee80211_queue_delayed_work(dev->hw, &dev->freq_cal.work,
          MT_FREQ_CAL_INIT_DELAY);
}
