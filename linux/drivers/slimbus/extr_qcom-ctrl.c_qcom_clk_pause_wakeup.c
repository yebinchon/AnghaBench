
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_controller {int dev; } ;
struct qcom_slim_ctrl {scalar_t__ base; int irq; int rclk; int hclk; } ;


 scalar_t__ FRM_WAKEUP ;
 int clk_prepare_enable (int ) ;
 struct qcom_slim_ctrl* dev_get_drvdata (int ) ;
 int enable_irq (int ) ;
 int mb () ;
 int usleep_range (int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int qcom_clk_pause_wakeup(struct slim_controller *sctrl)
{
 struct qcom_slim_ctrl *ctrl = dev_get_drvdata(sctrl->dev);

 clk_prepare_enable(ctrl->hclk);
 clk_prepare_enable(ctrl->rclk);
 enable_irq(ctrl->irq);

 writel_relaxed(1, ctrl->base + FRM_WAKEUP);

 mb();
 usleep_range(1250, 2500);
 return 0;
}
