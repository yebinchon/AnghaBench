
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int DSI_DSIPHY_CFG10 ;
 int REG_FLD_MOD (struct platform_device*,int ,int ,int,int) ;

__attribute__((used)) static void dsi_cio_disable_lane_override(struct platform_device *dsidev)
{

 REG_FLD_MOD(dsidev, DSI_DSIPHY_CFG10, 0, 27, 27);


 REG_FLD_MOD(dsidev, DSI_DSIPHY_CFG10, 0, 22, 17);
}
