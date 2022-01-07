
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ralink_usb_phy {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 u2_phy_r32(struct ralink_usb_phy *phy, u32 reg)
{
 return readl(phy->base + reg);
}
