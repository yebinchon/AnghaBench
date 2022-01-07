
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int vusb33; int dev; } ;


 int dev_err (int ,char*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int ssusb_clks_disable (struct ssusb_mtk*) ;
 int ssusb_clks_enable (struct ssusb_mtk*) ;
 int ssusb_phy_exit (struct ssusb_mtk*) ;
 int ssusb_phy_init (struct ssusb_mtk*) ;
 int ssusb_phy_power_on (struct ssusb_mtk*) ;

__attribute__((used)) static int ssusb_rscs_init(struct ssusb_mtk *ssusb)
{
 int ret = 0;

 ret = regulator_enable(ssusb->vusb33);
 if (ret) {
  dev_err(ssusb->dev, "failed to enable vusb33\n");
  goto vusb33_err;
 }

 ret = ssusb_clks_enable(ssusb);
 if (ret)
  goto clks_err;

 ret = ssusb_phy_init(ssusb);
 if (ret) {
  dev_err(ssusb->dev, "failed to init phy\n");
  goto phy_init_err;
 }

 ret = ssusb_phy_power_on(ssusb);
 if (ret) {
  dev_err(ssusb->dev, "failed to power on phy\n");
  goto phy_err;
 }

 return 0;

phy_err:
 ssusb_phy_exit(ssusb);
phy_init_err:
 ssusb_clks_disable(ssusb);
clks_err:
 regulator_disable(ssusb->vusb33);
vusb33_err:
 return ret;
}
