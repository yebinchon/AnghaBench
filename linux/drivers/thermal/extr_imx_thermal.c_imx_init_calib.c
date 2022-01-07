
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct platform_device {int dev; } ;
struct imx_thermal_data {int c1; int c2; TYPE_1__* socdata; } ;
struct TYPE_2__ {scalar_t__ version; } ;


 int EINVAL ;
 scalar_t__ TEMPMON_IMX7D ;
 int dev_err (int *,char*) ;
 int do_div (int,int) ;
 struct imx_thermal_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int imx_init_calib(struct platform_device *pdev, u32 ocotp_ana1)
{
 struct imx_thermal_data *data = platform_get_drvdata(pdev);
 int n1;
 u64 temp64;

 if (ocotp_ana1 == 0 || ocotp_ana1 == ~0) {
  dev_err(&pdev->dev, "invalid sensor calibration data\n");
  return -EINVAL;
 }





 if (data->socdata->version == TEMPMON_IMX7D) {
  data->c1 = (ocotp_ana1 >> 9) & 0x1ff;
  return 0;
 }
 n1 = ocotp_ana1 >> 20;

 temp64 = 10000000;
 temp64 *= 1000;
 do_div(temp64, 15423 * n1 - 4148468);
 data->c1 = temp64;
 data->c2 = n1 * data->c1 + 28581;

 return 0;
}
