
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int EFUSE_CTRL ;
 int EFUSE_CTRL_3290 ;
 int EFUSE_CTRL_PRESENT ;
 int RT3290 ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

int rt2800_efuse_detect(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u16 efuse_ctrl_reg;

 if (rt2x00_rt(rt2x00dev, RT3290))
  efuse_ctrl_reg = EFUSE_CTRL_3290;
 else
  efuse_ctrl_reg = EFUSE_CTRL;

 reg = rt2800_register_read(rt2x00dev, efuse_ctrl_reg);
 return rt2x00_get_field32(reg, EFUSE_CTRL_PRESENT);
}
