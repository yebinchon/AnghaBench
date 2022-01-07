
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int MT_AUX_CLK_CFG ;
 int MT_MCU_MEMMAP_WLAN ;
 int mac_chip_vals ;
 int mac_common_vals ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int ) ;
 int mt7601u_write_reg_pairs (struct mt7601u_dev*,int ,int ,int ) ;
 int mt76_init_beacon_offsets (struct mt7601u_dev*) ;

__attribute__((used)) static int mt7601u_write_mac_initvals(struct mt7601u_dev *dev)
{
 int ret;

 ret = mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_WLAN, mac_common_vals,
          ARRAY_SIZE(mac_common_vals));
 if (ret)
  return ret;
 ret = mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_WLAN,
          mac_chip_vals, ARRAY_SIZE(mac_chip_vals));
 if (ret)
  return ret;

 mt76_init_beacon_offsets(dev);

 mt7601u_wr(dev, MT_AUX_CLK_CFG, 0);

 return 0;
}
