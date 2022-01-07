
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_control {int (* phy_wkup ) (struct phy_control*,int ,int) ;} ;


 int stub1 (struct phy_control*,int ,int) ;

__attribute__((used)) static inline void phy_ctrl_wkup(struct phy_control *phy_ctrl, u32 id, bool on)
{
 phy_ctrl->phy_wkup(phy_ctrl, id, on);
}
