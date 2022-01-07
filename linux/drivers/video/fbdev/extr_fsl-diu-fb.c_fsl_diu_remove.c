
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_diu_data {int diu_reg; int * fsl_diu_info; int irq; } ;


 int NUM_AOIS ;
 struct fsl_diu_data* dev_get_drvdata (int *) ;
 int disable_lcdc (int *) ;
 int free_irq (int ,int ) ;
 int iounmap (int ) ;
 int uninstall_fb (int *) ;

__attribute__((used)) static int fsl_diu_remove(struct platform_device *pdev)
{
 struct fsl_diu_data *data;
 int i;

 data = dev_get_drvdata(&pdev->dev);
 disable_lcdc(&data->fsl_diu_info[0]);

 free_irq(data->irq, data->diu_reg);

 for (i = 0; i < NUM_AOIS; i++)
  uninstall_fb(&data->fsl_diu_info[i]);

 iounmap(data->diu_reg);

 return 0;
}
