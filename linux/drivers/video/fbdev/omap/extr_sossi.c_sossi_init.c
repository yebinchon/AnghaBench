
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omapfb_device {int dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* fck; struct omapfb_device* fbdev; int fck_hz; int lock; int base; } ;


 int ARM_IDLECT2 ;
 int CONF_SOSSI_RESET_R ;
 int ENODEV ;
 int ENOMEM ;
 int INT_1610_SoSSI_MATCH ;
 int IRQ_TYPE_EDGE_FALLING ;
 scalar_t__ IS_ERR (struct clk*) ;
 int MOD_CONF_CTRL_1 ;
 int OMAP_SOSSI_BASE ;
 int PTR_ERR (struct clk*) ;
 int SOSSI_ID_REG ;
 int SOSSI_INIT1_REG ;
 int SOSSI_INIT2_REG ;
 int SZ_1K ;
 int clk_disable (struct clk*) ;
 int clk_enable (struct clk*) ;
 struct clk* clk_get (int ,char*) ;
 int clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,int,int) ;
 int ioremap (int ,int ) ;
 int omap_lcdc_set_dma_callback (int ,int *) ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;
 int request_irq (int ,int ,int ,char*,int ) ;
 TYPE_1__ sossi ;
 int sossi_dma_callback ;
 int sossi_match_irq ;
 int sossi_read_reg (int ) ;
 int sossi_write_reg (int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int sossi_init(struct omapfb_device *fbdev)
{
 u32 l, k;
 struct clk *fck;
 struct clk *dpll1out_ck;
 int r;

 sossi.base = ioremap(OMAP_SOSSI_BASE, SZ_1K);
 if (!sossi.base) {
  dev_err(fbdev->dev, "can't ioremap SoSSI\n");
  return -ENOMEM;
 }

 sossi.fbdev = fbdev;
 spin_lock_init(&sossi.lock);

 dpll1out_ck = clk_get(fbdev->dev, "ck_dpll1out");
 if (IS_ERR(dpll1out_ck)) {
  dev_err(fbdev->dev, "can't get DPLL1OUT clock\n");
  return PTR_ERR(dpll1out_ck);
 }





 sossi.fck_hz = clk_get_rate(dpll1out_ck);
 clk_put(dpll1out_ck);

 fck = clk_get(fbdev->dev, "ck_sossi");
 if (IS_ERR(fck)) {
  dev_err(fbdev->dev, "can't get SoSSI functional clock\n");
  return PTR_ERR(fck);
 }
 sossi.fck = fck;


 l = omap_readl(MOD_CONF_CTRL_1);
 l |= CONF_SOSSI_RESET_R;
 omap_writel(l, MOD_CONF_CTRL_1);
 l &= ~CONF_SOSSI_RESET_R;
 omap_writel(l, MOD_CONF_CTRL_1);

 clk_enable(sossi.fck);
 l = omap_readl(ARM_IDLECT2);
 l &= ~(1 << 8);
 omap_writel(l, ARM_IDLECT2);

 l = sossi_read_reg(SOSSI_INIT2_REG);

 l |= (1 << 0) | (1 << 1);
 sossi_write_reg(SOSSI_INIT2_REG, l);

 l &= ~(1 << 1);
 sossi_write_reg(SOSSI_INIT2_REG, l);

 sossi_write_reg(SOSSI_ID_REG, 0);
 l = sossi_read_reg(SOSSI_ID_REG);
 k = sossi_read_reg(SOSSI_ID_REG);

 if (l != 0x55555555 || k != 0xaaaaaaaa) {
  dev_err(fbdev->dev,
   "invalid SoSSI sync pattern: %08x, %08x\n", l, k);
  r = -ENODEV;
  goto err;
 }

 if ((r = omap_lcdc_set_dma_callback(sossi_dma_callback, ((void*)0))) < 0) {
  dev_err(fbdev->dev, "can't get LCDC IRQ\n");
  r = -ENODEV;
  goto err;
 }

 l = sossi_read_reg(SOSSI_ID_REG);
 l = sossi_read_reg(SOSSI_ID_REG);
 dev_info(fbdev->dev, "SoSSI version %d.%d initialized\n",
  l >> 16, l & 0xffff);

 l = sossi_read_reg(SOSSI_INIT1_REG);
 l |= (1 << 19);
 l &= ~(1 << 31);
 sossi_write_reg(SOSSI_INIT1_REG, l);

 if ((r = request_irq(INT_1610_SoSSI_MATCH, sossi_match_irq,
        IRQ_TYPE_EDGE_FALLING,
      "sossi_match", sossi.fbdev->dev)) < 0) {
  dev_err(sossi.fbdev->dev, "can't get SoSSI match IRQ\n");
  goto err;
 }

 clk_disable(sossi.fck);
 return 0;

err:
 clk_disable(sossi.fck);
 clk_put(sossi.fck);
 return r;
}
