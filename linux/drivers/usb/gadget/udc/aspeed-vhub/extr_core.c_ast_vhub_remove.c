
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct ast_vhub {int * ep0_bufs; int ep0_bufs_dma; int lock; scalar_t__ clk; scalar_t__ regs; TYPE_1__* ports; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AST_VHUB_CTRL ;
 int AST_VHUB_EP0_MAX_PACKET ;
 scalar_t__ AST_VHUB_IER ;
 scalar_t__ AST_VHUB_ISR ;
 int AST_VHUB_NUM_PORTS ;
 int VHUB_CTRL_PHY_CLK ;
 int VHUB_CTRL_PHY_RESET_DIS ;
 int VHUB_IRQ_ACK_ALL ;
 int ast_vhub_del_dev (int *) ;
 int clk_disable_unprepare (scalar_t__) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 struct ast_vhub* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ast_vhub_remove(struct platform_device *pdev)
{
 struct ast_vhub *vhub = platform_get_drvdata(pdev);
 unsigned long flags;
 int i;

 if (!vhub || !vhub->regs)
  return 0;


 for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
  ast_vhub_del_dev(&vhub->ports[i].dev);

 spin_lock_irqsave(&vhub->lock, flags);


 writel(0, vhub->regs + AST_VHUB_IER);
 writel(VHUB_IRQ_ACK_ALL, vhub->regs + AST_VHUB_ISR);


 writel(VHUB_CTRL_PHY_CLK |
        VHUB_CTRL_PHY_RESET_DIS,
        vhub->regs + AST_VHUB_CTRL);

 if (vhub->clk)
  clk_disable_unprepare(vhub->clk);

 spin_unlock_irqrestore(&vhub->lock, flags);

 if (vhub->ep0_bufs)
  dma_free_coherent(&pdev->dev,
      AST_VHUB_EP0_MAX_PACKET *
      (AST_VHUB_NUM_PORTS + 1),
      vhub->ep0_bufs,
      vhub->ep0_bufs_dma);
 vhub->ep0_bufs = ((void*)0);

 return 0;
}
