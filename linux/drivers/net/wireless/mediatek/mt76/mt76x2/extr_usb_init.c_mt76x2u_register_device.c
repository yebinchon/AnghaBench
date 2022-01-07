
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sband; } ;
struct TYPE_7__ {int sband; } ;
struct TYPE_6__ {scalar_t__ sg_en; } ;
struct TYPE_9__ {TYPE_3__ sband_5g; TYPE_2__ sband_2g; int state; TYPE_1__ usb; } ;
struct mt76x02_dev {TYPE_4__ mt76; int cal_work; } ;
struct ieee80211_hw {int max_tx_fragments; } ;


 int ARRAY_SIZE (int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MT76_STATE_INITIALIZED ;
 int MT_TX_SG_MAX_SIZE ;
 struct ieee80211_hw* mt76_hw (struct mt76x02_dev*) ;
 int mt76_register_device (TYPE_4__*,int,int ,int ) ;
 int mt76u_alloc_queues (TYPE_4__*) ;
 int mt76x02_init_debugfs (struct mt76x02_dev*) ;
 int mt76x02_init_device (struct mt76x02_dev*) ;
 int mt76x02_rates ;
 int mt76x2_init_txpower (struct mt76x02_dev*,int *) ;
 int mt76x2u_cleanup (struct mt76x02_dev*) ;
 int mt76x2u_init_eeprom (struct mt76x02_dev*) ;
 int mt76x2u_init_hardware (struct mt76x02_dev*) ;
 int mt76x2u_phy_calibrate ;
 int set_bit (int ,int *) ;

int mt76x2u_register_device(struct mt76x02_dev *dev)
{
 struct ieee80211_hw *hw = mt76_hw(dev);
 int err;

 INIT_DELAYED_WORK(&dev->cal_work, mt76x2u_phy_calibrate);
 mt76x02_init_device(dev);

 err = mt76x2u_init_eeprom(dev);
 if (err < 0)
  return err;

 err = mt76u_alloc_queues(&dev->mt76);
 if (err < 0)
  goto fail;

 err = mt76x2u_init_hardware(dev);
 if (err < 0)
  goto fail;

 err = mt76_register_device(&dev->mt76, 1, mt76x02_rates,
       ARRAY_SIZE(mt76x02_rates));
 if (err)
  goto fail;


 if (dev->mt76.usb.sg_en)
  hw->max_tx_fragments = MT_TX_SG_MAX_SIZE;
 else
  hw->max_tx_fragments = 1;

 set_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);

 mt76x02_init_debugfs(dev);
 mt76x2_init_txpower(dev, &dev->mt76.sband_2g.sband);
 mt76x2_init_txpower(dev, &dev->mt76.sband_5g.sband);

 return 0;

fail:
 mt76x2u_cleanup(dev);
 return err;
}
