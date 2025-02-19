
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chan; } ;
struct mt76_rate_power {int dummy; } ;
struct TYPE_4__ {int txpower_cur; int txpower_conf; TYPE_1__ chandef; struct mt76_rate_power rate_power; } ;
struct mt76x02_dev {int target_power; TYPE_2__ mt76; } ;
typedef int s8 ;


 int mt76x02_add_rate_power_offset (struct mt76_rate_power*,int ) ;
 int mt76x02_get_max_rate_power (struct mt76_rate_power*) ;
 int mt76x02_limit_rate_power (struct mt76_rate_power*,int ) ;
 int mt76x02_phy_set_txpower (struct mt76x02_dev*,int ,int ) ;
 int mt76x0_get_power_info (struct mt76x02_dev*,int ,int *) ;
 int mt76x0_get_tx_power_per_rate (struct mt76x02_dev*,int ,struct mt76_rate_power*) ;

void mt76x0_phy_set_txpower(struct mt76x02_dev *dev)
{
 struct mt76_rate_power *t = &dev->mt76.rate_power;
 s8 info;

 mt76x0_get_tx_power_per_rate(dev, dev->mt76.chandef.chan, t);
 mt76x0_get_power_info(dev, dev->mt76.chandef.chan, &info);

 mt76x02_add_rate_power_offset(t, info);
 mt76x02_limit_rate_power(t, dev->mt76.txpower_conf);
 dev->mt76.txpower_cur = mt76x02_get_max_rate_power(t);
 mt76x02_add_rate_power_offset(t, -info);

 dev->target_power = info;
 mt76x02_phy_set_txpower(dev, info, info);
}
