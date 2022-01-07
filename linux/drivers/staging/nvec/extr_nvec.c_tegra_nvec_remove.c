
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nvec_chip {int tx_work; int rx_work; int nvec_status_notifier; int dev; } ;


 int cancel_work_sync (int *) ;
 int mfd_remove_devices (int ) ;
 int nvec_toggle_global_events (struct nvec_chip*,int) ;
 int nvec_unregister_notifier (struct nvec_chip*,int *) ;
 struct nvec_chip* platform_get_drvdata (struct platform_device*) ;
 int * pm_power_off ;

__attribute__((used)) static int tegra_nvec_remove(struct platform_device *pdev)
{
 struct nvec_chip *nvec = platform_get_drvdata(pdev);

 nvec_toggle_global_events(nvec, 0);
 mfd_remove_devices(nvec->dev);
 nvec_unregister_notifier(nvec, &nvec->nvec_status_notifier);
 cancel_work_sync(&nvec->rx_work);
 cancel_work_sync(&nvec->tx_work);

 pm_power_off = ((void*)0);

 return 0;
}
