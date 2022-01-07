
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct q6v5 {int halt_nc; int halt_modem; int halt_q6; void* halt_map; void* rmb_base; void* reg_base; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_phandle_args {int * args; int np; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (TYPE_1__*,char*) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_fixed_args (int ,char*,int,int ,struct of_phandle_args*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 void* syscon_node_to_regmap (int ) ;

__attribute__((used)) static int q6v5_init_mem(struct q6v5 *qproc, struct platform_device *pdev)
{
 struct of_phandle_args args;
 struct resource *res;
 int ret;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "qdsp6");
 qproc->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(qproc->reg_base))
  return PTR_ERR(qproc->reg_base);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "rmb");
 qproc->rmb_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(qproc->rmb_base))
  return PTR_ERR(qproc->rmb_base);

 ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node,
            "qcom,halt-regs", 3, 0, &args);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to parse qcom,halt-regs\n");
  return -EINVAL;
 }

 qproc->halt_map = syscon_node_to_regmap(args.np);
 of_node_put(args.np);
 if (IS_ERR(qproc->halt_map))
  return PTR_ERR(qproc->halt_map);

 qproc->halt_q6 = args.args[0];
 qproc->halt_modem = args.args[1];
 qproc->halt_nc = args.args[2];

 return 0;
}
