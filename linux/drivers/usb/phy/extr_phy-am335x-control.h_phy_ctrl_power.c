
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_control {int (* phy_power ) (struct phy_control*,int ,int,int) ;} ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;


 int stub1 (struct phy_control*,int ,int,int) ;

__attribute__((used)) static inline void phy_ctrl_power(struct phy_control *phy_ctrl, u32 id,
    enum usb_dr_mode dr_mode, bool on)
{
 phy_ctrl->phy_power(phy_ctrl, id, dr_mode, on);
}
