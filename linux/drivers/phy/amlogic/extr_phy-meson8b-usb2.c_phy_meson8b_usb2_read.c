
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct phy_meson8b_usb2_priv {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 phy_meson8b_usb2_read(struct phy_meson8b_usb2_priv *phy_priv,
     u32 reg)
{
 return readl(phy_priv->regs + reg);
}
