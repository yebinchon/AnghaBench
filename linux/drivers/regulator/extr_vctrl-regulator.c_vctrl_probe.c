
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vctrl_voltage_range {int min_uV; int max_uV; } ;
struct regulator_desc {char* name; int continuous_voltage_range; int n_voltages; int * ops; int owner; int type; } ;
struct TYPE_7__ {struct vctrl_voltage_range ctrl; } ;
struct vctrl_data {int sel; int rdev; TYPE_2__* vtable; int ctrl_reg; struct regulator_desc desc; TYPE_1__ vrange; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_config {struct regulator_init_data const* init_data; struct vctrl_data* driver_data; TYPE_3__* dev; struct device_node* of_node; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int ctrl; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct vctrl_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_regulator_register (TYPE_3__*,struct regulator_desc*,struct regulator_config*) ;
 struct regulator_init_data* of_get_regulator_init_data (TYPE_3__*,struct device_node*,struct regulator_desc*) ;
 int platform_set_drvdata (struct platform_device*,struct vctrl_data*) ;
 int regulator_count_voltages (int ) ;
 int regulator_get_linear_step (int ) ;
 int regulator_get_voltage (int ) ;
 int vctrl_init_vtable (struct platform_device*) ;
 int vctrl_ops_cont ;
 int vctrl_ops_non_cont ;
 int vctrl_parse_dt (struct platform_device*,struct vctrl_data*) ;

__attribute__((used)) static int vctrl_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct vctrl_data *vctrl;
 const struct regulator_init_data *init_data;
 struct regulator_desc *rdesc;
 struct regulator_config cfg = { };
 struct vctrl_voltage_range *vrange_ctrl;
 int ctrl_uV;
 int ret;

 vctrl = devm_kzalloc(&pdev->dev, sizeof(struct vctrl_data),
        GFP_KERNEL);
 if (!vctrl)
  return -ENOMEM;

 platform_set_drvdata(pdev, vctrl);

 ret = vctrl_parse_dt(pdev, vctrl);
 if (ret)
  return ret;

 vrange_ctrl = &vctrl->vrange.ctrl;

 rdesc = &vctrl->desc;
 rdesc->name = "vctrl";
 rdesc->type = REGULATOR_VOLTAGE;
 rdesc->owner = THIS_MODULE;

 if ((regulator_get_linear_step(vctrl->ctrl_reg) == 1) ||
     (regulator_count_voltages(vctrl->ctrl_reg) == -EINVAL)) {
  rdesc->continuous_voltage_range = 1;
  rdesc->ops = &vctrl_ops_cont;
 } else {
  rdesc->ops = &vctrl_ops_non_cont;
 }

 init_data = of_get_regulator_init_data(&pdev->dev, np, rdesc);
 if (!init_data)
  return -ENOMEM;

 cfg.of_node = np;
 cfg.dev = &pdev->dev;
 cfg.driver_data = vctrl;
 cfg.init_data = init_data;

 if (!rdesc->continuous_voltage_range) {
  ret = vctrl_init_vtable(pdev);
  if (ret)
   return ret;

  ctrl_uV = regulator_get_voltage(vctrl->ctrl_reg);
  if (ctrl_uV < 0) {
   dev_err(&pdev->dev, "failed to get control voltage\n");
   return ctrl_uV;
  }


  if (ctrl_uV < vrange_ctrl->min_uV) {
   vctrl->sel = 0;
  } else if (ctrl_uV > vrange_ctrl->max_uV) {
   vctrl->sel = rdesc->n_voltages - 1;
  } else {
   int i;

   for (i = 0; i < rdesc->n_voltages; i++) {
    if (ctrl_uV == vctrl->vtable[i].ctrl) {
     vctrl->sel = i;
     break;
    }
   }
  }
 }

 vctrl->rdev = devm_regulator_register(&pdev->dev, rdesc, &cfg);
 if (IS_ERR(vctrl->rdev)) {
  ret = PTR_ERR(vctrl->rdev);
  dev_err(&pdev->dev, "failed to register regulator: %d\n", ret);
  return ret;
 }

 return 0;
}
