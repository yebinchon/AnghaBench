
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int speed; } ;
struct ast_vhub_dev {int enabled; int index; TYPE_1__ gadget; scalar_t__ regs; TYPE_2__* vhub; } ;
struct TYPE_4__ {scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_DEV_EN_CTRL ;
 scalar_t__ AST_VHUB_IER ;
 int USB_SPEED_UNKNOWN ;
 int VHUB_IRQ_DEVICE1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ast_vhub_dev_disable(struct ast_vhub_dev *d)
{
 u32 reg, hmsk;

 if (!d->enabled)
  return;


 hmsk = VHUB_IRQ_DEVICE1 << d->index;
 reg = readl(d->vhub->regs + AST_VHUB_IER);
 reg &= ~hmsk;
 writel(reg, d->vhub->regs + AST_VHUB_IER);


 writel(0, d->regs + AST_VHUB_DEV_EN_CTRL);
 d->gadget.speed = USB_SPEED_UNKNOWN;
 d->enabled = 0;
}
