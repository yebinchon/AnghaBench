
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;


 int imx_init_calib (struct platform_device*,int ) ;
 int imx_init_temp_grade (struct platform_device*,int ) ;
 int nvmem_cell_read_u32 (int *,char*,int *) ;

__attribute__((used)) static int imx_init_from_nvmem_cells(struct platform_device *pdev)
{
 int ret;
 u32 val;

 ret = nvmem_cell_read_u32(&pdev->dev, "calib", &val);
 if (ret)
  return ret;

 ret = imx_init_calib(pdev, val);
 if (ret)
  return ret;

 ret = nvmem_cell_read_u32(&pdev->dev, "temp_grade", &val);
 if (ret)
  return ret;
 imx_init_temp_grade(pdev, val);

 return 0;
}
