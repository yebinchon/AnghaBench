
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tps65217_charger {TYPE_1__* dev; struct task_struct* poll_task; struct task_struct* psy; struct tps65217* tps; } ;
struct tps65217 {int dummy; } ;
struct task_struct {int dummy; } ;
struct power_supply_config {struct tps65217_charger* drv_data; int of_node; } ;
struct TYPE_5__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int NUM_CHARGER_IRQS ;
 int PTR_ERR (struct task_struct*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct tps65217* dev_get_drvdata (int ) ;
 struct tps65217_charger* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct task_struct* devm_power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int (*) (int,struct tps65217_charger*),int ,char*,struct tps65217_charger*) ;
 struct task_struct* kthread_run (int ,struct tps65217_charger*,char*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct tps65217_charger*) ;
 int tps65217_charger_desc ;
 int tps65217_charger_irq (int,struct tps65217_charger*) ;
 int tps65217_charger_poll_task ;
 int tps65217_config_charger (struct tps65217_charger*) ;

__attribute__((used)) static int tps65217_charger_probe(struct platform_device *pdev)
{
 struct tps65217 *tps = dev_get_drvdata(pdev->dev.parent);
 struct tps65217_charger *charger;
 struct power_supply_config cfg = {};
 struct task_struct *poll_task;
 int irq[NUM_CHARGER_IRQS];
 int ret;
 int i;

 charger = devm_kzalloc(&pdev->dev, sizeof(*charger), GFP_KERNEL);
 if (!charger)
  return -ENOMEM;

 platform_set_drvdata(pdev, charger);
 charger->tps = tps;
 charger->dev = &pdev->dev;

 cfg.of_node = pdev->dev.of_node;
 cfg.drv_data = charger;

 charger->psy = devm_power_supply_register(&pdev->dev,
        &tps65217_charger_desc,
        &cfg);
 if (IS_ERR(charger->psy)) {
  dev_err(&pdev->dev, "failed: power supply register\n");
  return PTR_ERR(charger->psy);
 }

 irq[0] = platform_get_irq_byname(pdev, "USB");
 irq[1] = platform_get_irq_byname(pdev, "AC");

 ret = tps65217_config_charger(charger);
 if (ret < 0) {
  dev_err(charger->dev, "charger config failed, err %d\n", ret);
  return ret;
 }


 if (irq[0] < 0 || irq[1] < 0) {
  poll_task = kthread_run(tps65217_charger_poll_task,
     charger, "ktps65217charger");
  if (IS_ERR(poll_task)) {
   ret = PTR_ERR(poll_task);
   dev_err(charger->dev,
    "Unable to run kthread err %d\n", ret);
   return ret;
  }

  charger->poll_task = poll_task;
  return 0;
 }


 for (i = 0; i < NUM_CHARGER_IRQS; i++) {
  ret = devm_request_threaded_irq(&pdev->dev, irq[i], ((void*)0),
      tps65217_charger_irq,
      0, "tps65217-charger",
      charger);
  if (ret) {
   dev_err(charger->dev,
    "Unable to register irq %d err %d\n", irq[i],
    ret);
   return ret;
  }


  tps65217_charger_irq(-1, charger);
 }

 return 0;
}
