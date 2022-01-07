
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct imx_thermal_data {char* temp_grade; int temp_max; int temp_critical; int temp_passive; } ;


 struct imx_thermal_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void imx_init_temp_grade(struct platform_device *pdev, u32 ocotp_mem0)
{
 struct imx_thermal_data *data = platform_get_drvdata(pdev);


 switch ((ocotp_mem0 >> 6) & 0x3) {
 case 0:
  data->temp_grade = "Commercial";
  data->temp_max = 95000;
  break;
 case 1:
  data->temp_grade = "Extended Commercial";
  data->temp_max = 105000;
  break;
 case 2:
  data->temp_grade = "Industrial";
  data->temp_max = 105000;
  break;
 case 3:
  data->temp_grade = "Automotive";
  data->temp_max = 125000;
  break;
 }





 data->temp_critical = data->temp_max - (1000 * 5);
 data->temp_passive = data->temp_max - (1000 * 10);
}
