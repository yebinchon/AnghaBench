
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_usb_phy {int reg_offset; TYPE_1__* base; } ;
struct TYPE_2__ {int reg_base; } ;


 int HIWORD_UPDATE (int ,int ) ;
 int UOC_CON0_SIDDQ ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int rockchip_usb_phy_power(struct rockchip_usb_phy *phy,
        bool siddq)
{
 u32 val = HIWORD_UPDATE(siddq ? UOC_CON0_SIDDQ : 0, UOC_CON0_SIDDQ);

 return regmap_write(phy->base->reg_base, phy->reg_offset, val);
}
