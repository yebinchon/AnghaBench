
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * high_gain; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct mt76x02_dev {TYPE_2__ cal; } ;
typedef int s8 ;


 int mt76x2_adjust_agc_gain (struct mt76x02_dev*,int,int ) ;
 int mt76x2_adjust_high_lna_gain (struct mt76x02_dev*,int,int ) ;

void mt76x2_apply_gain_adj(struct mt76x02_dev *dev)
{
 s8 *gain_adj = dev->cal.rx.high_gain;

 mt76x2_adjust_high_lna_gain(dev, 4, gain_adj[0]);
 mt76x2_adjust_high_lna_gain(dev, 5, gain_adj[1]);

 mt76x2_adjust_agc_gain(dev, 8, gain_adj[0]);
 mt76x2_adjust_agc_gain(dev, 9, gain_adj[1]);
}
