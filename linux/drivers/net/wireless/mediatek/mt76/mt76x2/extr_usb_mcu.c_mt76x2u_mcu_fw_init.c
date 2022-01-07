
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int mt76x2u_mcu_load_firmware (struct mt76x02_dev*) ;
 int mt76x2u_mcu_load_rom_patch (struct mt76x02_dev*) ;

int mt76x2u_mcu_fw_init(struct mt76x02_dev *dev)
{
 int err;

 err = mt76x2u_mcu_load_rom_patch(dev);
 if (err < 0)
  return err;

 return mt76x2u_mcu_load_firmware(dev);
}
