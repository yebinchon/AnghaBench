
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_vhub {scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_CTRL ;
 int UDCDBG (struct ast_vhub*,char*) ;
 int VHUB_CTRL_MANUAL_REMOTE_WAKEUP ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ast_vhub_send_host_wakeup(struct ast_vhub *vhub)
{
 u32 reg = readl(vhub->regs + AST_VHUB_CTRL);
 UDCDBG(vhub, "Waking up host !\n");
 reg |= VHUB_CTRL_MANUAL_REMOTE_WAKEUP;
 writel(reg, vhub->regs + AST_VHUB_CTRL);
}
