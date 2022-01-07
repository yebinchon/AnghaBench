
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ralink_usb_phy {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void u2_phy_w32(struct ralink_usb_phy *phy, u32 val, u32 reg)
{
 writel(val, phy->base + reg);
}
