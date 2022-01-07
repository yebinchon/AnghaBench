
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_gen2_phy_driver {int lock; scalar_t__ base; int clk; } ;
struct rcar_gen2_phy {int select_value; int number; struct rcar_gen2_channel* channel; } ;
struct rcar_gen2_channel {int select_mask; int selected_phy; struct rcar_gen2_phy_driver* drv; } ;
struct phy {int dummy; } ;


 int EBUSY ;
 scalar_t__ USBHS_UGCTRL2 ;
 int clk_prepare_enable (int ) ;
 int cmpxchg (int *,int,int ) ;
 struct rcar_gen2_phy* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int rcar_gen2_phy_init(struct phy *p)
{
 struct rcar_gen2_phy *phy = phy_get_drvdata(p);
 struct rcar_gen2_channel *channel = phy->channel;
 struct rcar_gen2_phy_driver *drv = channel->drv;
 unsigned long flags;
 u32 ugctrl2;







 if (cmpxchg(&channel->selected_phy, -1, phy->number) != -1)
  return -EBUSY;

 clk_prepare_enable(drv->clk);

 spin_lock_irqsave(&drv->lock, flags);
 ugctrl2 = readl(drv->base + USBHS_UGCTRL2);
 ugctrl2 &= ~channel->select_mask;
 ugctrl2 |= phy->select_value;
 writel(ugctrl2, drv->base + USBHS_UGCTRL2);
 spin_unlock_irqrestore(&drv->lock, flags);
 return 0;
}
