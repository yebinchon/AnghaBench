
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {scalar_t__ irq; int has_gcr_regs; int telemetry_dev; int punit_dev; int tco_dev; int gcr_lock; int cmd_complete; int irq_mode; TYPE_2__* dev; } ;


 int EBUSY ;
 int EINVAL ;
 int IPC_TRIGGER_MODE_IRQ ;
 int IRQF_NO_SUSPEND ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_free_irq (TYPE_2__*,scalar_t__,TYPE_1__*) ;
 scalar_t__ devm_request_irq (TYPE_2__*,scalar_t__,int ,int ,char*,TYPE_1__*) ;
 int init_completion (int *) ;
 int intel_ipc_group ;
 int ioc ;
 int ipc_create_pmc_devices () ;
 int ipc_plat_get_res (struct platform_device*) ;
 TYPE_1__ ipcdev ;
 int platform_device_unregister (int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int spin_lock_init (int *) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int ipc_plat_probe(struct platform_device *pdev)
{
 int ret;

 ipcdev.dev = &pdev->dev;
 ipcdev.irq_mode = IPC_TRIGGER_MODE_IRQ;
 init_completion(&ipcdev.cmd_complete);
 spin_lock_init(&ipcdev.gcr_lock);

 ipcdev.irq = platform_get_irq(pdev, 0);
 if (ipcdev.irq < 0)
  return -EINVAL;

 ret = ipc_plat_get_res(pdev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request resource\n");
  return ret;
 }

 ret = ipc_create_pmc_devices();
 if (ret) {
  dev_err(&pdev->dev, "Failed to create pmc devices\n");
  return ret;
 }

 if (devm_request_irq(&pdev->dev, ipcdev.irq, ioc, IRQF_NO_SUSPEND,
        "intel_pmc_ipc", &ipcdev)) {
  dev_err(&pdev->dev, "Failed to request irq\n");
  ret = -EBUSY;
  goto err_irq;
 }

 ret = sysfs_create_group(&pdev->dev.kobj, &intel_ipc_group);
 if (ret) {
  dev_err(&pdev->dev, "Failed to create sysfs group %d\n",
   ret);
  goto err_sys;
 }

 ipcdev.has_gcr_regs = 1;

 return 0;
err_sys:
 devm_free_irq(&pdev->dev, ipcdev.irq, &ipcdev);
err_irq:
 platform_device_unregister(ipcdev.tco_dev);
 platform_device_unregister(ipcdev.punit_dev);
 platform_device_unregister(ipcdev.telemetry_dev);

 return ret;
}
