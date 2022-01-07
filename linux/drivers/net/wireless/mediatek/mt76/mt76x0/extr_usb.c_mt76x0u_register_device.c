
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sg_en; } ;
struct TYPE_4__ {int state; TYPE_1__ usb; struct ieee80211_hw* hw; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct ieee80211_hw {int max_tx_fragments; } ;


 int MT76_STATE_INITIALIZED ;
 int MT_TX_SG_MAX_SIZE ;
 int mt76u_alloc_queues (TYPE_2__*) ;
 int mt76x0_register_device (struct mt76x02_dev*) ;
 int mt76x0u_cleanup (struct mt76x02_dev*) ;
 int mt76x0u_init_hardware (struct mt76x02_dev*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mt76x0u_register_device(struct mt76x02_dev *dev)
{
 struct ieee80211_hw *hw = dev->mt76.hw;
 int err;

 err = mt76u_alloc_queues(&dev->mt76);
 if (err < 0)
  goto out_err;

 err = mt76x0u_init_hardware(dev, 1);
 if (err < 0)
  goto out_err;

 err = mt76x0_register_device(dev);
 if (err < 0)
  goto out_err;


 if (dev->mt76.usb.sg_en)
  hw->max_tx_fragments = MT_TX_SG_MAX_SIZE;
 else
  hw->max_tx_fragments = 1;

 set_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);

 return 0;

out_err:
 mt76x0u_cleanup(dev);
 return err;
}
