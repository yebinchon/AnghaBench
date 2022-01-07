
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct fsl_usb2_platform_data {int (* exit ) (struct platform_device*) ;} ;
struct TYPE_5__ {TYPE_2__* otg; } ;
struct TYPE_6__ {TYPE_1__ phy; int irq; } ;


 int FSL_OTG_MAJOR ;
 int FSL_OTG_NAME ;
 struct fsl_usb2_platform_data* dev_get_platdata (int *) ;
 int free_irq (int ,TYPE_2__*) ;
 TYPE_2__* fsl_otg_dev ;
 int fsl_otg_uninit_timers () ;
 int iounmap (void*) ;
 int kfree (TYPE_2__*) ;
 int stub1 (struct platform_device*) ;
 int unregister_chrdev (int ,int ) ;
 scalar_t__ usb_dr_regs ;
 int usb_remove_phy (TYPE_1__*) ;

__attribute__((used)) static int fsl_otg_remove(struct platform_device *pdev)
{
 struct fsl_usb2_platform_data *pdata = dev_get_platdata(&pdev->dev);

 usb_remove_phy(&fsl_otg_dev->phy);
 free_irq(fsl_otg_dev->irq, fsl_otg_dev);

 iounmap((void *)usb_dr_regs);

 fsl_otg_uninit_timers();
 kfree(fsl_otg_dev->phy.otg);
 kfree(fsl_otg_dev);

 unregister_chrdev(FSL_OTG_MAJOR, FSL_OTG_NAME);

 if (pdata->exit)
  pdata->exit(pdev);

 return 0;
}
