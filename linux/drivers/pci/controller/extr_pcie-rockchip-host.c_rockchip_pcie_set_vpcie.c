
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {int vpcie12v; int vpcie3v3; int vpcie1v8; int vpcie0v9; struct device* dev; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
{
 struct device *dev = rockchip->dev;
 int err;

 if (!IS_ERR(rockchip->vpcie12v)) {
  err = regulator_enable(rockchip->vpcie12v);
  if (err) {
   dev_err(dev, "fail to enable vpcie12v regulator\n");
   goto err_out;
  }
 }

 if (!IS_ERR(rockchip->vpcie3v3)) {
  err = regulator_enable(rockchip->vpcie3v3);
  if (err) {
   dev_err(dev, "fail to enable vpcie3v3 regulator\n");
   goto err_disable_12v;
  }
 }

 if (!IS_ERR(rockchip->vpcie1v8)) {
  err = regulator_enable(rockchip->vpcie1v8);
  if (err) {
   dev_err(dev, "fail to enable vpcie1v8 regulator\n");
   goto err_disable_3v3;
  }
 }

 if (!IS_ERR(rockchip->vpcie0v9)) {
  err = regulator_enable(rockchip->vpcie0v9);
  if (err) {
   dev_err(dev, "fail to enable vpcie0v9 regulator\n");
   goto err_disable_1v8;
  }
 }

 return 0;

err_disable_1v8:
 if (!IS_ERR(rockchip->vpcie1v8))
  regulator_disable(rockchip->vpcie1v8);
err_disable_3v3:
 if (!IS_ERR(rockchip->vpcie3v3))
  regulator_disable(rockchip->vpcie3v3);
err_disable_12v:
 if (!IS_ERR(rockchip->vpcie12v))
  regulator_disable(rockchip->vpcie12v);
err_out:
 return err;
}
