
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mt7601u_dev {int con_mon_lock; int avg_rssi; int state; } ;


 int MT7601U_STATE_SCANNING ;
 long ewma_rssi_read (int *) ;
 scalar_t__ mt7601u_agc_default (struct mt7601u_dev*) ;
 scalar_t__ mt7601u_bbp_rr (struct mt7601u_dev*,int) ;
 int mt7601u_bbp_wr (struct mt7601u_dev*,int,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mt7601u_agc_tune(struct mt7601u_dev *dev)
{
 u8 val = mt7601u_agc_default(dev);
 long avg_rssi;

 if (test_bit(MT7601U_STATE_SCANNING, &dev->state))
  return;





 spin_lock_bh(&dev->con_mon_lock);
 avg_rssi = ewma_rssi_read(&dev->avg_rssi);
 spin_unlock_bh(&dev->con_mon_lock);
 if (avg_rssi == 0)
  return;

 avg_rssi = -avg_rssi;
 if (avg_rssi <= -70)
  val -= 0x20;
 else if (avg_rssi <= -60)
  val -= 0x10;

 if (val != mt7601u_bbp_rr(dev, 66))
  mt7601u_bbp_wr(dev, 66, val);




}
