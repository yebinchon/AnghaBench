
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rockchip_usb2phy_port {int suspended; TYPE_1__* port_cfg; TYPE_3__* phy; } ;
struct rockchip_usb2phy {int clk480m; } ;
struct regmap {int dummy; } ;
struct TYPE_5__ {int parent; } ;
struct phy {TYPE_2__ dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int phy_sus; } ;


 int clk_prepare_enable (int ) ;
 int dev_dbg (int *,char*) ;
 struct rockchip_usb2phy* dev_get_drvdata (int ) ;
 struct regmap* get_reg_base (struct rockchip_usb2phy*) ;
 struct rockchip_usb2phy_port* phy_get_drvdata (struct phy*) ;
 int property_enable (struct regmap*,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rockchip_usb2phy_power_on(struct phy *phy)
{
 struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);
 struct rockchip_usb2phy *rphy = dev_get_drvdata(phy->dev.parent);
 struct regmap *base = get_reg_base(rphy);
 int ret;

 dev_dbg(&rport->phy->dev, "port power on\n");

 if (!rport->suspended)
  return 0;

 ret = clk_prepare_enable(rphy->clk480m);
 if (ret)
  return ret;

 ret = property_enable(base, &rport->port_cfg->phy_sus, 0);
 if (ret)
  return ret;


 usleep_range(1500, 2000);

 rport->suspended = 0;
 return 0;
}
