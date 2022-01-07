
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int state; int mac_work; } ;
struct mt76x02_dev {TYPE_1__ mt76; int cal_work; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int MT76_REMOVED ;
 int MT76_STATE_RUNNING ;
 int MT_USB_DMA_CFG ;
 int MT_USB_DMA_CFG_RX_BUSY ;
 int MT_USB_DMA_CFG_TX_BUSY ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int dev_warn (int ,char*) ;
 int mt76_poll (struct mt76x02_dev*,int ,int ,int ,int) ;
 int mt76u_stop_tx (TYPE_1__*) ;
 int mt76x02u_exit_beacon_config (struct mt76x02_dev*) ;
 int mt76x0_mac_stop (struct mt76x02_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mt76x0u_stop(struct ieee80211_hw *hw)
{
 struct mt76x02_dev *dev = hw->priv;

 clear_bit(MT76_STATE_RUNNING, &dev->mt76.state);
 cancel_delayed_work_sync(&dev->cal_work);
 cancel_delayed_work_sync(&dev->mt76.mac_work);
 mt76u_stop_tx(&dev->mt76);
 mt76x02u_exit_beacon_config(dev);

 if (test_bit(MT76_REMOVED, &dev->mt76.state))
  return;

 if (!mt76_poll(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_TX_BUSY, 0, 1000))
  dev_warn(dev->mt76.dev, "TX DMA did not stop\n");

 mt76x0_mac_stop(dev);

 if (!mt76_poll(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_RX_BUSY, 0, 1000))
  dev_warn(dev->mt76.dev, "RX DMA did not stop\n");
}
