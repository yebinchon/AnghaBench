
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hisi_thermal_data {int nr_sensors; TYPE_1__* sensor; int clk; struct platform_device* pdev; } ;
struct TYPE_2__ {char* irq_name; struct hisi_thermal_data* data; int id; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int HI6220_CLUSTER0_SENSOR ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_clk_get (struct device*,char*) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static int hi6220_thermal_probe(struct hisi_thermal_data *data)
{
 struct platform_device *pdev = data->pdev;
 struct device *dev = &pdev->dev;
 int ret;

 data->clk = devm_clk_get(dev, "thermal_clk");
 if (IS_ERR(data->clk)) {
  ret = PTR_ERR(data->clk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to get thermal clk: %d\n", ret);
  return ret;
 }

 data->sensor = devm_kzalloc(dev, sizeof(*data->sensor), GFP_KERNEL);
 if (!data->sensor)
  return -ENOMEM;

 data->sensor[0].id = HI6220_CLUSTER0_SENSOR;
 data->sensor[0].irq_name = "tsensor_intr";
 data->sensor[0].data = data;
 data->nr_sensors = 1;

 return 0;
}
