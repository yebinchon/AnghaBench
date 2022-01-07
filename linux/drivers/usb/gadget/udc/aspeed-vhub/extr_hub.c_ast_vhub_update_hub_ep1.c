
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ast_vhub {scalar_t__ regs; TYPE_1__* ports; } ;
struct TYPE_2__ {scalar_t__ change; } ;


 scalar_t__ AST_VHUB_EP1_STS_CHG ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ast_vhub_update_hub_ep1(struct ast_vhub *vhub,
        unsigned int port)
{

 u32 reg = readl(vhub->regs + AST_VHUB_EP1_STS_CHG);
 u32 pmask = (1 << (port + 1));
 if (vhub->ports[port].change)
  reg |= pmask;
 else
  reg &= ~pmask;
 writel(reg, vhub->regs + AST_VHUB_EP1_STS_CHG);
}
