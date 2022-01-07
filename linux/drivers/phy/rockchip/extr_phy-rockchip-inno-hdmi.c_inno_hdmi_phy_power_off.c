
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy {int dummy; } ;
struct inno_hdmi_phy {int dev; int phyclk; TYPE_2__* plat_data; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* power_off ) (struct inno_hdmi_phy*) ;} ;


 int EINVAL ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int ,char*) ;
 struct inno_hdmi_phy* phy_get_drvdata (struct phy*) ;
 int stub1 (struct inno_hdmi_phy*) ;

__attribute__((used)) static int inno_hdmi_phy_power_off(struct phy *phy)
{
 struct inno_hdmi_phy *inno = phy_get_drvdata(phy);

 if (!inno->plat_data->ops->power_off)
  return -EINVAL;

 inno->plat_data->ops->power_off(inno);

 clk_disable_unprepare(inno->phyclk);

 dev_dbg(inno->dev, "Inno HDMI PHY Power Off\n");

 return 0;
}
