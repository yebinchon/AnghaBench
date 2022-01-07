
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_lpss_chip {int dummy; } ;
struct pci_dev {int dev; } ;


 struct pwm_lpss_chip* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pwm_lpss_remove (struct pwm_lpss_chip*) ;

__attribute__((used)) static void pwm_lpss_remove_pci(struct pci_dev *pdev)
{
 struct pwm_lpss_chip *lpwm = pci_get_drvdata(pdev);

 pm_runtime_forbid(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 pwm_lpss_remove(lpwm);
}
