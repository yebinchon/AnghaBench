
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {scalar_t__ state; scalar_t__ spi_en; scalar_t__ init_disabled; } ;


 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ;
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ;
 scalar_t__ ARCHE_PLATFORM_STATE_STANDBY ;
 int devm_gpiod_put (struct device*,scalar_t__) ;
 struct arche_apb_ctrl_drvdata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int standby_boot_seq(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct arche_apb_ctrl_drvdata *apb = platform_get_drvdata(pdev);

 if (apb->init_disabled)
  return 0;





 if (apb->state == ARCHE_PLATFORM_STATE_STANDBY ||
     apb->state == ARCHE_PLATFORM_STATE_OFF)
  return 0;

 if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING && apb->spi_en)
  devm_gpiod_put(dev, apb->spi_en);
 apb->state = ARCHE_PLATFORM_STATE_STANDBY;
 return 0;
}
