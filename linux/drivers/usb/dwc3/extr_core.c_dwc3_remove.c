
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dwc3 {int dummy; } ;


 int dwc3_core_exit (struct dwc3*) ;
 int dwc3_core_exit_mode (struct dwc3*) ;
 int dwc3_debugfs_exit (struct dwc3*) ;
 int dwc3_free_event_buffers (struct dwc3*) ;
 int dwc3_free_scratch_buffers (struct dwc3*) ;
 int dwc3_ulpi_exit (struct dwc3*) ;
 struct dwc3* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int dwc3_remove(struct platform_device *pdev)
{
 struct dwc3 *dwc = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&pdev->dev);

 dwc3_debugfs_exit(dwc);
 dwc3_core_exit_mode(dwc);

 dwc3_core_exit(dwc);
 dwc3_ulpi_exit(dwc);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_allow(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 dwc3_free_event_buffers(dwc);
 dwc3_free_scratch_buffers(dwc);

 return 0;
}
