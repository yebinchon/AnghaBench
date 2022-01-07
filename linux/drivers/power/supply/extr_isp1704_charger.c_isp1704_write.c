
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp1704_charger {int phy; } ;


 int usb_phy_io_write (int ,int ,int ) ;

__attribute__((used)) static inline int isp1704_write(struct isp1704_charger *isp, u32 reg, u32 val)
{
 return usb_phy_io_write(isp->phy, val, reg);
}
