
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT76_STATE_INITIALIZED ;
 int clear_bit (int ,int *) ;
 int mt76u_queues_deinit (TYPE_1__*) ;
 int mt76x0_chip_onoff (struct mt76x02_dev*,int,int) ;

__attribute__((used)) static void mt76x0u_cleanup(struct mt76x02_dev *dev)
{
 clear_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);
 mt76x0_chip_onoff(dev, 0, 0);
 mt76u_queues_deinit(&dev->mt76);
}
