
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sband; } ;
struct TYPE_4__ {int sband; } ;
struct TYPE_6__ {TYPE_2__ sband_5g; TYPE_1__ sband_2g; } ;
struct mt76x02_dev {TYPE_3__ mt76; int cal_work; } ;


 int ARRAY_SIZE (int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int mt76_register_device (TYPE_3__*,int,int ,int ) ;
 int mt76x02_config_mac_addr_list (struct mt76x02_dev*) ;
 int mt76x02_init_debugfs (struct mt76x02_dev*) ;
 int mt76x02_init_device (struct mt76x02_dev*) ;
 int mt76x02_rates ;
 int mt76x2_init_hardware (struct mt76x02_dev*) ;
 int mt76x2_init_txpower (struct mt76x02_dev*,int *) ;
 int mt76x2_phy_calibrate ;
 int mt76x2_stop_hardware (struct mt76x02_dev*) ;

int mt76x2_register_device(struct mt76x02_dev *dev)
{
 int ret;

 INIT_DELAYED_WORK(&dev->cal_work, mt76x2_phy_calibrate);

 mt76x02_init_device(dev);

 ret = mt76x2_init_hardware(dev);
 if (ret)
  return ret;

 mt76x02_config_mac_addr_list(dev);

 ret = mt76_register_device(&dev->mt76, 1, mt76x02_rates,
       ARRAY_SIZE(mt76x02_rates));
 if (ret)
  goto fail;

 mt76x02_init_debugfs(dev);
 mt76x2_init_txpower(dev, &dev->mt76.sband_2g.sband);
 mt76x2_init_txpower(dev, &dev->mt76.sband_5g.sband);

 return 0;

fail:
 mt76x2_stop_hardware(dev);
 return ret;
}
