
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {scalar_t__ bw; } ;


 int MCU_CAL_BW ;
 scalar_t__ MT_BW_20 ;
 int mt7601u_mcu_calibrate (struct mt7601u_dev*,int ,int) ;

__attribute__((used)) static int mt7601u_set_bw_filter(struct mt7601u_dev *dev, bool cal)
{
 u32 filter = 0;
 int ret;

 if (!cal)
  filter |= 0x10000;
 if (dev->bw != MT_BW_20)
  filter |= 0x00100;


 ret = mt7601u_mcu_calibrate(dev, MCU_CAL_BW, filter | 1);
 if (ret)
  return ret;

 return mt7601u_mcu_calibrate(dev, MCU_CAL_BW, filter);
}
