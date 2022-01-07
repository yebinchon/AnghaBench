
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dpi_data {int dummy; } ;


 struct dpi_data* dev_get_drvdata (int *) ;

__attribute__((used)) static struct dpi_data *dpi_get_data_from_pdev(struct platform_device *pdev)
{
 return dev_get_drvdata(&pdev->dev);
}
