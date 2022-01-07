
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* chan; } ;
struct mt7601u_dev {TYPE_3__ chandef; TYPE_1__* ee; } ;
struct TYPE_5__ {int hw_value; } ;
struct TYPE_4__ {int* chan_pwr; } ;



__attribute__((used)) static int mt7601u_current_tx_power(struct mt7601u_dev *dev)
{
 return dev->ee->chan_pwr[dev->chandef.chan->hw_value - 1];
}
