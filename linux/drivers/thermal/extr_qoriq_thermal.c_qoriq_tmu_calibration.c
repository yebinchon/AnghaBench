
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qoriq_tmu_data {TYPE_1__* regs; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int tscfgr; int ttcfgr; int ttr3cr; int ttr2cr; int ttr1cr; int ttr0cr; } ;


 int ENODEV ;
 int dev_err (TYPE_2__*,char*) ;
 int* of_get_property (struct device_node*,char*,int*) ;
 scalar_t__ of_property_read_u32_array (struct device_node*,char*,int*,int) ;
 int of_read_number (int const*,int) ;
 struct qoriq_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int tmu_write (struct qoriq_tmu_data*,int,int *) ;

__attribute__((used)) static int qoriq_tmu_calibration(struct platform_device *pdev)
{
 int i, val, len;
 u32 range[4];
 const u32 *calibration;
 struct device_node *np = pdev->dev.of_node;
 struct qoriq_tmu_data *data = platform_get_drvdata(pdev);

 if (of_property_read_u32_array(np, "fsl,tmu-range", range, 4)) {
  dev_err(&pdev->dev, "missing calibration range.\n");
  return -ENODEV;
 }


 tmu_write(data, range[0], &data->regs->ttr0cr);
 tmu_write(data, range[1], &data->regs->ttr1cr);
 tmu_write(data, range[2], &data->regs->ttr2cr);
 tmu_write(data, range[3], &data->regs->ttr3cr);

 calibration = of_get_property(np, "fsl,tmu-calibration", &len);
 if (calibration == ((void*)0) || len % 8) {
  dev_err(&pdev->dev, "invalid calibration data.\n");
  return -ENODEV;
 }

 for (i = 0; i < len; i += 8, calibration += 2) {
  val = of_read_number(calibration, 1);
  tmu_write(data, val, &data->regs->ttcfgr);
  val = of_read_number(calibration + 1, 1);
  tmu_write(data, val, &data->regs->tscfgr);
 }

 return 0;
}
