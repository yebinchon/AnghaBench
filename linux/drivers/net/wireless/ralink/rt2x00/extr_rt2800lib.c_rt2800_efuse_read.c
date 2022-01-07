
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int csr_mutex; int * eeprom; } ;


 int EFUSE_CTRL ;
 int EFUSE_CTRL_3290 ;
 int EFUSE_CTRL_ADDRESS_IN ;
 int EFUSE_CTRL_KICK ;
 int EFUSE_CTRL_MODE ;
 int EFUSE_DATA0 ;
 int EFUSE_DATA0_3290 ;
 int EFUSE_DATA1 ;
 int EFUSE_DATA1_3290 ;
 int EFUSE_DATA2 ;
 int EFUSE_DATA2_3290 ;
 int EFUSE_DATA3 ;
 int EFUSE_DATA3_3290 ;
 int RT3290 ;
 int cpu_to_le32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2800_regbusy_read (struct rt2x00_dev*,int ,int ,int *) ;
 int rt2800_register_read_lock (struct rt2x00_dev*,int ) ;
 int rt2800_register_write_lock (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2800_efuse_read(struct rt2x00_dev *rt2x00dev, unsigned int i)
{
 u32 reg;
 u16 efuse_ctrl_reg;
 u16 efuse_data0_reg;
 u16 efuse_data1_reg;
 u16 efuse_data2_reg;
 u16 efuse_data3_reg;

 if (rt2x00_rt(rt2x00dev, RT3290)) {
  efuse_ctrl_reg = EFUSE_CTRL_3290;
  efuse_data0_reg = EFUSE_DATA0_3290;
  efuse_data1_reg = EFUSE_DATA1_3290;
  efuse_data2_reg = EFUSE_DATA2_3290;
  efuse_data3_reg = EFUSE_DATA3_3290;
 } else {
  efuse_ctrl_reg = EFUSE_CTRL;
  efuse_data0_reg = EFUSE_DATA0;
  efuse_data1_reg = EFUSE_DATA1;
  efuse_data2_reg = EFUSE_DATA2;
  efuse_data3_reg = EFUSE_DATA3;
 }
 mutex_lock(&rt2x00dev->csr_mutex);

 reg = rt2800_register_read_lock(rt2x00dev, efuse_ctrl_reg);
 rt2x00_set_field32(&reg, EFUSE_CTRL_ADDRESS_IN, i);
 rt2x00_set_field32(&reg, EFUSE_CTRL_MODE, 0);
 rt2x00_set_field32(&reg, EFUSE_CTRL_KICK, 1);
 rt2800_register_write_lock(rt2x00dev, efuse_ctrl_reg, reg);


 rt2800_regbusy_read(rt2x00dev, efuse_ctrl_reg, EFUSE_CTRL_KICK, &reg);

 reg = rt2800_register_read_lock(rt2x00dev, efuse_data3_reg);

 *(u32 *)&rt2x00dev->eeprom[i] = cpu_to_le32(reg);
 reg = rt2800_register_read_lock(rt2x00dev, efuse_data2_reg);
 *(u32 *)&rt2x00dev->eeprom[i + 2] = cpu_to_le32(reg);
 reg = rt2800_register_read_lock(rt2x00dev, efuse_data1_reg);
 *(u32 *)&rt2x00dev->eeprom[i + 4] = cpu_to_le32(reg);
 reg = rt2800_register_read_lock(rt2x00dev, efuse_data0_reg);
 *(u32 *)&rt2x00dev->eeprom[i + 6] = cpu_to_le32(reg);

 mutex_unlock(&rt2x00dev->csr_mutex);
}
