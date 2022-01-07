
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsi_data {int dummy; } ;


 struct dsi_data* dev_get_drvdata (int *) ;

__attribute__((used)) static inline struct dsi_data *dsi_get_dsidrv_data(struct platform_device *dsidev)
{
 return dev_get_drvdata(&dsidev->dev);
}
