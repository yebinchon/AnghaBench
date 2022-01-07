
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_glue {int flags; int clk; int rst; int phy; int host_nb; int extcon; int dev; int xceiv; } ;
struct musb {TYPE_1__* controller; int isr; scalar_t__ mregs; int xceiv; int phy; } ;
struct TYPE_2__ {int parent; } ;


 int EXTCON_USB_HOST ;
 int SUNXI_MUSB_FL_HAS_RESET ;
 int SUNXI_MUSB_FL_HAS_SRAM ;
 scalar_t__ SUNXI_MUSB_VEND0 ;
 int SUNXI_MUSB_VEND0_PIO_MODE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct sunxi_glue* dev_get_drvdata (int ) ;
 int devm_extcon_register_notifier (int ,int ,int ,int *) ;
 int phy_init (int ) ;
 int pm_runtime_get (TYPE_1__*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct musb* sunxi_musb ;
 int sunxi_musb_interrupt ;
 int sunxi_sram_claim (int ) ;
 int sunxi_sram_release (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int sunxi_musb_init(struct musb *musb)
{
 struct sunxi_glue *glue = dev_get_drvdata(musb->controller->parent);
 int ret;

 sunxi_musb = musb;
 musb->phy = glue->phy;
 musb->xceiv = glue->xceiv;

 if (test_bit(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags)) {
  ret = sunxi_sram_claim(musb->controller->parent);
  if (ret)
   return ret;
 }

 ret = clk_prepare_enable(glue->clk);
 if (ret)
  goto error_sram_release;

 if (test_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags)) {
  ret = reset_control_deassert(glue->rst);
  if (ret)
   goto error_clk_disable;
 }

 writeb(SUNXI_MUSB_VEND0_PIO_MODE, musb->mregs + SUNXI_MUSB_VEND0);


 ret = devm_extcon_register_notifier(glue->dev, glue->extcon,
     EXTCON_USB_HOST, &glue->host_nb);
 if (ret)
  goto error_reset_assert;

 ret = phy_init(glue->phy);
 if (ret)
  goto error_reset_assert;

 musb->isr = sunxi_musb_interrupt;


 pm_runtime_get(musb->controller);

 return 0;

error_reset_assert:
 if (test_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags))
  reset_control_assert(glue->rst);
error_clk_disable:
 clk_disable_unprepare(glue->clk);
error_sram_release:
 if (test_bit(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags))
  sunxi_sram_release(musb->controller->parent);
 return ret;
}
