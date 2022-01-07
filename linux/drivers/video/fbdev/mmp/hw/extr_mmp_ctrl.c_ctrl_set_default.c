
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmphw_ctrl {scalar_t__ reg_base; } ;


 scalar_t__ LCD_TOP_CTRL ;
 scalar_t__ SPU_IRQ_ENA ;
 int err_imask (int) ;
 int path_imasks (int) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void ctrl_set_default(struct mmphw_ctrl *ctrl)
{
 u32 tmp, irq_mask;





 tmp = readl_relaxed(ctrl->reg_base + LCD_TOP_CTRL);
 tmp |= 0xfff0;
 writel_relaxed(tmp, ctrl->reg_base + LCD_TOP_CTRL);



 irq_mask = path_imasks(0) | err_imask(0) |
     path_imasks(1) | err_imask(1);
 tmp = readl_relaxed(ctrl->reg_base + SPU_IRQ_ENA);
 tmp &= ~irq_mask;
 tmp |= irq_mask;
 writel_relaxed(tmp, ctrl->reg_base + SPU_IRQ_ENA);
}
