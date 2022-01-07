
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_11__ {int kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_12__ {int attr; } ;
struct TYPE_10__ {int (* get_api_version ) (scalar_t__*) ;int (* init_finalize ) () ;} ;


 int ENODEV ;
 int ENXIO ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 scalar_t__ ZYNQMP_PM_VERSION ;
 TYPE_7__ dev_attr_suspend_mode ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_name (TYPE_3__*) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int *,int ,int,int ,TYPE_3__*) ;
 TYPE_1__* eemi_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 int stub1 () ;
 int stub2 (scalar_t__*) ;
 int sysfs_create_file (int *,int *) ;
 TYPE_1__* zynqmp_pm_get_eemi_ops () ;
 int zynqmp_pm_isr ;

__attribute__((used)) static int zynqmp_pm_probe(struct platform_device *pdev)
{
 int ret, irq;
 u32 pm_api_version;

 eemi_ops = zynqmp_pm_get_eemi_ops();
 if (IS_ERR(eemi_ops))
  return PTR_ERR(eemi_ops);

 if (!eemi_ops->get_api_version || !eemi_ops->init_finalize)
  return -ENXIO;

 eemi_ops->init_finalize();
 eemi_ops->get_api_version(&pm_api_version);


 if (pm_api_version < ZYNQMP_PM_VERSION)
  return -ENODEV;

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return -ENXIO;

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0), zynqmp_pm_isr,
     IRQF_NO_SUSPEND | IRQF_ONESHOT,
     dev_name(&pdev->dev), &pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "devm_request_threaded_irq '%d' failed "
   "with %d\n", irq, ret);
  return ret;
 }

 ret = sysfs_create_file(&pdev->dev.kobj, &dev_attr_suspend_mode.attr);
 if (ret) {
  dev_err(&pdev->dev, "unable to create sysfs interface\n");
  return ret;
 }

 return 0;
}
