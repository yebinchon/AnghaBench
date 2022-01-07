
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb3phy_reg {int write_enable; int enable_bit; int offset; } ;
struct rockchip_typec_phy {int grf_regs; } ;


 int regmap_write (int ,int ,int) ;

__attribute__((used)) static inline int property_enable(struct rockchip_typec_phy *tcphy,
      const struct usb3phy_reg *reg, bool en)
{
 u32 mask = 1 << reg->write_enable;
 u32 val = en << reg->enable_bit;

 return regmap_write(tcphy->grf_regs, reg->offset, val | mask);
}
