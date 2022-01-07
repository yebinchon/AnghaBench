
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_dwc3 {int rstc_rst; int rstc_pwrdn; } ;
struct platform_device {int dev; } ;


 int of_platform_depopulate (int *) ;
 struct st_dwc3* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int st_dwc3_remove(struct platform_device *pdev)
{
 struct st_dwc3 *dwc3_data = platform_get_drvdata(pdev);

 of_platform_depopulate(&pdev->dev);

 reset_control_assert(dwc3_data->rstc_pwrdn);
 reset_control_assert(dwc3_data->rstc_rst);

 return 0;
}
