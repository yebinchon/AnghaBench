
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct regulator_bulk_data {int dummy; } ;
struct qcom_wcnss {int dummy; } ;
struct qcom_iris {int num_vregs; TYPE_4__* vregs; int xo_clk; } ;
struct TYPE_11__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iris_data {int num_vregs; int use_48mhz_xo; TYPE_1__* vregs; } ;
struct TYPE_12__ {int consumer; int supply; } ;
struct TYPE_10__ {scalar_t__ load_uA; scalar_t__ max_voltage; int min_voltage; int name; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct qcom_wcnss* dev_get_drvdata (int ) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 TYPE_4__* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct qcom_iris* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_2__*,int,TYPE_4__*) ;
 struct iris_data* of_device_get_match_data (TYPE_2__*) ;
 int qcom_wcnss_assign_iris (struct qcom_wcnss*,struct qcom_iris*,int ) ;
 int regulator_set_load (int ,scalar_t__) ;
 int regulator_set_voltage (int ,int ,scalar_t__) ;

__attribute__((used)) static int qcom_iris_probe(struct platform_device *pdev)
{
 const struct iris_data *data;
 struct qcom_wcnss *wcnss;
 struct qcom_iris *iris;
 int ret;
 int i;

 iris = devm_kzalloc(&pdev->dev, sizeof(struct qcom_iris), GFP_KERNEL);
 if (!iris)
  return -ENOMEM;

 data = of_device_get_match_data(&pdev->dev);
 wcnss = dev_get_drvdata(pdev->dev.parent);

 iris->xo_clk = devm_clk_get(&pdev->dev, "xo");
 if (IS_ERR(iris->xo_clk)) {
  if (PTR_ERR(iris->xo_clk) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "failed to acquire xo clk\n");
  return PTR_ERR(iris->xo_clk);
 }

 iris->num_vregs = data->num_vregs;
 iris->vregs = devm_kcalloc(&pdev->dev,
       iris->num_vregs,
       sizeof(struct regulator_bulk_data),
       GFP_KERNEL);
 if (!iris->vregs)
  return -ENOMEM;

 for (i = 0; i < iris->num_vregs; i++)
  iris->vregs[i].supply = data->vregs[i].name;

 ret = devm_regulator_bulk_get(&pdev->dev, iris->num_vregs, iris->vregs);
 if (ret) {
  dev_err(&pdev->dev, "failed to get regulators\n");
  return ret;
 }

 for (i = 0; i < iris->num_vregs; i++) {
  if (data->vregs[i].max_voltage)
   regulator_set_voltage(iris->vregs[i].consumer,
           data->vregs[i].min_voltage,
           data->vregs[i].max_voltage);

  if (data->vregs[i].load_uA)
   regulator_set_load(iris->vregs[i].consumer,
        data->vregs[i].load_uA);
 }

 qcom_wcnss_assign_iris(wcnss, iris, data->use_48mhz_xo);

 return 0;
}
