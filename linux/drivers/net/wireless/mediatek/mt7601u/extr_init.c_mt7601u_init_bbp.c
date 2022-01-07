
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int MT_MCU_MEMMAP_BBP ;
 int bbp_chip_vals ;
 int bbp_common_vals ;
 int mt7601u_wait_bbp_ready (struct mt7601u_dev*) ;
 int mt7601u_write_reg_pairs (struct mt7601u_dev*,int ,int ,int ) ;

__attribute__((used)) static int mt7601u_init_bbp(struct mt7601u_dev *dev)
{
 int ret;

 ret = mt7601u_wait_bbp_ready(dev);
 if (ret)
  return ret;

 ret = mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_BBP, bbp_common_vals,
          ARRAY_SIZE(bbp_common_vals));
 if (ret)
  return ret;

 return mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_BBP, bbp_chip_vals,
           ARRAY_SIZE(bbp_chip_vals));
}
