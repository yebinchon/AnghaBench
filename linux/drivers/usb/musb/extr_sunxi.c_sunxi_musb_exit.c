
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_glue {int xceiv; int dev; int flags; int clk; int rst; int phy; int work; } ;
struct musb {TYPE_1__* controller; } ;
struct TYPE_2__ {int parent; } ;


 int SUNXI_MUSB_FL_HAS_RESET ;
 int SUNXI_MUSB_FL_HAS_SRAM ;
 int SUNXI_MUSB_FL_PHY_ON ;
 int cancel_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 struct sunxi_glue* dev_get_drvdata (int ) ;
 int devm_usb_put_phy (int ,int ) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 int pm_runtime_put (TYPE_1__*) ;
 int reset_control_assert (int ) ;
 int sunxi_sram_release (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int sunxi_musb_exit(struct musb *musb)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);

 pm_runtime_put(musb->controller);

 cancel_work_sync(&glue->work);
 if (test_bit(SUNXI_MUSB_FL_PHY_ON, &glue->flags))
  phy_power_off(glue->phy);

 phy_exit(glue->phy);

 if (test_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags))
  reset_control_assert(glue->rst);

 clk_disable_unprepare(glue->clk);
 if (test_bit(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags))
  sunxi_sram_release(musb->controller->parent);

 devm_usb_put_phy(glue->dev, glue->xceiv);

 return 0;
}
