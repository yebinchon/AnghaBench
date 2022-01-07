
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsdk_rst {scalar_t__ regs_ctl; } ;


 scalar_t__ CGU_SYS_RST_CTRL ;
 int * rst_map ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hsdk_reset_config(struct hsdk_rst *rst, unsigned long id)
{
 writel(rst_map[id], rst->regs_ctl + CGU_SYS_RST_CTRL);
}
