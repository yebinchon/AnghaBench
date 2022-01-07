
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_meson8b_usb2_priv {int regs; } ;


 int phy_meson8b_usb2_read (struct phy_meson8b_usb2_priv*,int) ;
 int writel (int,int) ;

__attribute__((used)) static void phy_meson8b_usb2_mask_bits(struct phy_meson8b_usb2_priv *phy_priv,
           u32 reg, u32 mask, u32 value)
{
 u32 data;

 data = phy_meson8b_usb2_read(phy_priv, reg);
 data &= ~mask;
 data |= (value & mask);

 writel(data, phy_priv->regs + reg);
}
