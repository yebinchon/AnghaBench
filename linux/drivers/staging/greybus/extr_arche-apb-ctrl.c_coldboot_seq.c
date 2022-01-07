
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {scalar_t__ state; int resetn; scalar_t__ clk_en; int vio; int vcore; scalar_t__ spi_en; scalar_t__ init_disabled; } ;


 scalar_t__ ARCHE_PLATFORM_STATE_ACTIVE ;
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ;
 int IS_ERR (int ) ;
 int apb_bootret_deassert (struct device*) ;
 int assert_reset (int ) ;
 int deassert_reset (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_gpiod_put (struct device*,scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 struct arche_apb_ctrl_drvdata* platform_get_drvdata (struct platform_device*) ;
 int regulator_enable (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int coldboot_seq(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct arche_apb_ctrl_drvdata *apb = platform_get_drvdata(pdev);
 int ret;

 if (apb->init_disabled ||
     apb->state == ARCHE_PLATFORM_STATE_ACTIVE)
  return 0;


 assert_reset(apb->resetn);

 if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING && apb->spi_en)
  devm_gpiod_put(dev, apb->spi_en);


 if (!IS_ERR(apb->vcore)) {
  ret = regulator_enable(apb->vcore);
  if (ret) {
   dev_err(dev, "failed to enable core regulator\n");
   return ret;
  }
 }

 if (!IS_ERR(apb->vio)) {
  ret = regulator_enable(apb->vio);
  if (ret) {
   dev_err(dev, "failed to enable IO regulator\n");
   return ret;
  }
 }

 apb_bootret_deassert(dev);


 if (apb->clk_en)
  gpiod_set_value(apb->clk_en, 1);

 usleep_range(100, 200);


 deassert_reset(apb->resetn);

 apb->state = ARCHE_PLATFORM_STATE_ACTIVE;

 return 0;
}
