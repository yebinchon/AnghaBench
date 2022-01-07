
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_lpss_chip {int dummy; } ;
struct pwm_lpss_boardinfo {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; int * resource; } ;


 scalar_t__ IS_ERR (struct pwm_lpss_chip*) ;
 int PTR_ERR (struct pwm_lpss_chip*) ;
 int pci_set_drvdata (struct pci_dev*,struct pwm_lpss_chip*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_put (int *) ;
 struct pwm_lpss_chip* pwm_lpss_probe (int *,int *,struct pwm_lpss_boardinfo const*) ;

__attribute__((used)) static int pwm_lpss_probe_pci(struct pci_dev *pdev,
         const struct pci_device_id *id)
{
 const struct pwm_lpss_boardinfo *info;
 struct pwm_lpss_chip *lpwm;
 int err;

 err = pcim_enable_device(pdev);
 if (err < 0)
  return err;

 info = (struct pwm_lpss_boardinfo *)id->driver_data;
 lpwm = pwm_lpss_probe(&pdev->dev, &pdev->resource[0], info);
 if (IS_ERR(lpwm))
  return PTR_ERR(lpwm);

 pci_set_drvdata(pdev, lpwm);

 pm_runtime_put(&pdev->dev);
 pm_runtime_allow(&pdev->dev);

 return 0;
}
