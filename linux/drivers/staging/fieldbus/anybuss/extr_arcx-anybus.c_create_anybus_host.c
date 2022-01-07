
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct anybuss_ops {int host_idx; scalar_t__ irq; int regmap; int reset; } ;
struct anybuss_host {int dummy; } ;


 int EINVAL ;
 struct anybuss_host* ERR_CAST (int ) ;
 struct anybuss_host* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int create_parallel_regmap (struct platform_device*,int) ;
 struct anybuss_host* devm_anybuss_host_common_probe (int *,struct anybuss_ops*) ;
 int export_reset_0 ;
 int export_reset_1 ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;

__attribute__((used)) static struct anybuss_host *
create_anybus_host(struct platform_device *pdev, int idx)
{
 struct anybuss_ops ops = {};

 switch (idx) {
 case 0:
  ops.reset = export_reset_0;
  break;
 case 1:
  ops.reset = export_reset_1;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }
 ops.host_idx = idx;
 ops.regmap = create_parallel_regmap(pdev, idx);
 if (IS_ERR(ops.regmap))
  return ERR_CAST(ops.regmap);
 ops.irq = platform_get_irq(pdev, idx);
 if (ops.irq <= 0)
  return ERR_PTR(-EINVAL);
 return devm_anybuss_host_common_probe(&pdev->dev, &ops);
}
