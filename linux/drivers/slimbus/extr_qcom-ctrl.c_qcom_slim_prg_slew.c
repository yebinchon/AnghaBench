
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct qcom_slim_ctrl {int slew_reg; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 int devm_ioremap (int *,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int resource_size (struct resource*) ;
 int wmb () ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static void qcom_slim_prg_slew(struct platform_device *pdev,
    struct qcom_slim_ctrl *ctrl)
{
 struct resource *slew_mem;

 if (!ctrl->slew_reg) {

  slew_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM,
    "slew");
  ctrl->slew_reg = devm_ioremap(&pdev->dev, slew_mem->start,
    resource_size(slew_mem));
  if (!ctrl->slew_reg)
   return;
 }

 writel_relaxed(1, ctrl->slew_reg);

 wmb();
}
