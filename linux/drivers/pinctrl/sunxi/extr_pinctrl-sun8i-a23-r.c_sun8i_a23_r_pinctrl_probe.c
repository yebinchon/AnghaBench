
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 int dev_err (int *,char*) ;
 struct reset_control* devm_reset_control_get_exclusive (int *,int *) ;
 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int sun8i_a23_r_pinctrl_data ;
 int sunxi_pinctrl_init (struct platform_device*,int *) ;

__attribute__((used)) static int sun8i_a23_r_pinctrl_probe(struct platform_device *pdev)
{
 struct reset_control *rstc;
 int ret;

 rstc = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
 if (IS_ERR(rstc)) {
  dev_err(&pdev->dev, "Reset controller missing\n");
  return PTR_ERR(rstc);
 }

 ret = reset_control_deassert(rstc);
 if (ret)
  return ret;

 ret = sunxi_pinctrl_init(pdev,
     &sun8i_a23_r_pinctrl_data);

 if (ret)
  reset_control_assert(rstc);

 return ret;
}
