
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct rockchip_typec_phy {scalar_t__ base; } ;
struct TYPE_3__ {scalar_t__ addr; int value; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* usb3_pll_cfg ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tcphy_cfg_usb3_pll(struct rockchip_typec_phy *tcphy)
{
 u32 i;


 for (i = 0; i < ARRAY_SIZE(usb3_pll_cfg); i++)
  writel(usb3_pll_cfg[i].value,
         tcphy->base + usb3_pll_cfg[i].addr);
}
