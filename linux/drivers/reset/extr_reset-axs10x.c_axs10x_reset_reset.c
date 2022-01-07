
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct axs10x_rst {int lock; int regs_rst; } ;


 int BIT (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct axs10x_rst* to_axs10x_rst (struct reset_controller_dev*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int axs10x_reset_reset(struct reset_controller_dev *rcdev,
         unsigned long id)
{
 struct axs10x_rst *rst = to_axs10x_rst(rcdev);
 unsigned long flags;

 spin_lock_irqsave(&rst->lock, flags);
 writel(BIT(id), rst->regs_rst);
 spin_unlock_irqrestore(&rst->lock, flags);

 return 0;
}
