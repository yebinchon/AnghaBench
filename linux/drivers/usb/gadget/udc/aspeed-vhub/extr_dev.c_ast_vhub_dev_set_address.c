
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ast_vhub_dev {scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_DEV_EN_CTRL ;
 int DDBG (struct ast_vhub_dev*,char*,int ) ;
 int VHUB_DEV_EN_ADDR_MASK ;
 int VHUB_DEV_EN_SET_ADDR (int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ast_vhub_dev_set_address(struct ast_vhub_dev *d, u8 addr)
{
 u32 reg;

 DDBG(d, "SET_ADDRESS: Got address %x\n", addr);

 reg = readl(d->regs + AST_VHUB_DEV_EN_CTRL);
 reg &= ~VHUB_DEV_EN_ADDR_MASK;
 reg |= VHUB_DEV_EN_SET_ADDR(addr);
 writel(reg, d->regs + AST_VHUB_DEV_EN_CTRL);
}
