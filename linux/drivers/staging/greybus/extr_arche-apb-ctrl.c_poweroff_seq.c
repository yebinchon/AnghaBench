
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {scalar_t__ state; int resetn; int vio; int vcore; scalar_t__ clk_en; scalar_t__ spi_en; scalar_t__ init_disabled; } ;


 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ;
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ;
 int IS_ERR (int ) ;
 int assert_reset (int ) ;
 int devm_gpiod_put (struct device*,scalar_t__) ;
 int gpiod_set_value (scalar_t__,int ) ;
 struct arche_apb_ctrl_drvdata* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 scalar_t__ regulator_is_enabled (int ) ;

__attribute__((used)) static void poweroff_seq(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct arche_apb_ctrl_drvdata *apb = platform_get_drvdata(pdev);

 if (apb->init_disabled || apb->state == ARCHE_PLATFORM_STATE_OFF)
  return;

 if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING && apb->spi_en)
  devm_gpiod_put(dev, apb->spi_en);


 if (apb->clk_en)
  gpiod_set_value(apb->clk_en, 0);

 if (!IS_ERR(apb->vcore) && regulator_is_enabled(apb->vcore) > 0)
  regulator_disable(apb->vcore);

 if (!IS_ERR(apb->vio) && regulator_is_enabled(apb->vio) > 0)
  regulator_disable(apb->vio);


 assert_reset(apb->resetn);
 apb->state = ARCHE_PLATFORM_STATE_OFF;


}
