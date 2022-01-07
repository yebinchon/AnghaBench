
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; } ;
struct TYPE_4__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;





__attribute__((used)) static inline int
mt76x02_get_rssi_gain_thresh(struct mt76x02_dev *dev)
{
 switch (dev->mt76.chandef.width) {
 case 128:
  return -62;
 case 129:
  return -65;
 default:
  return -68;
 }
}
