
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int batch_cache; int cache; int cache_lock; } ;
struct rsc_drv {TYPE_2__ client; TYPE_1__* tcs; scalar_t__ name; int id; int tcs_in_use; int lock; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int mask; } ;


 size_t ACTIVE_TCS ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_NO_SUSPEND ;
 int IRQF_TRIGGER_HIGH ;
 int MAX_TCS_NR ;
 int RSC_DRV_IRQ_ENABLE ;
 int bitmap_zero (int ,int ) ;
 int cmd_db_ready () ;
 int dev_err (TYPE_3__*,char*,int) ;
 scalar_t__ dev_name (TYPE_3__*) ;
 int dev_set_drvdata (TYPE_3__*,struct rsc_drv*) ;
 struct rsc_drv* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_of_platform_populate (TYPE_3__*) ;
 int devm_request_irq (TYPE_3__*,int,int ,int,scalar_t__,struct rsc_drv*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int rpmh_probe_tcs_config (struct platform_device*,struct rsc_drv*) ;
 int spin_lock_init (int *) ;
 int tcs_tx_done ;
 int write_tcs_reg (struct rsc_drv*,int ,int ,int ) ;

__attribute__((used)) static int rpmh_rsc_probe(struct platform_device *pdev)
{
 struct device_node *dn = pdev->dev.of_node;
 struct rsc_drv *drv;
 int ret, irq;





 ret = cmd_db_ready();
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Command DB not available (%d)\n",
         ret);
  return ret;
 }

 drv = devm_kzalloc(&pdev->dev, sizeof(*drv), GFP_KERNEL);
 if (!drv)
  return -ENOMEM;

 ret = of_property_read_u32(dn, "qcom,drv-id", &drv->id);
 if (ret)
  return ret;

 drv->name = of_get_property(dn, "label", ((void*)0));
 if (!drv->name)
  drv->name = dev_name(&pdev->dev);

 ret = rpmh_probe_tcs_config(pdev, drv);
 if (ret)
  return ret;

 spin_lock_init(&drv->lock);
 bitmap_zero(drv->tcs_in_use, MAX_TCS_NR);

 irq = platform_get_irq(pdev, drv->id);
 if (irq < 0)
  return irq;

 ret = devm_request_irq(&pdev->dev, irq, tcs_tx_done,
          IRQF_TRIGGER_HIGH | IRQF_NO_SUSPEND,
          drv->name, drv);
 if (ret)
  return ret;


 write_tcs_reg(drv, RSC_DRV_IRQ_ENABLE, 0, drv->tcs[ACTIVE_TCS].mask);

 spin_lock_init(&drv->client.cache_lock);
 INIT_LIST_HEAD(&drv->client.cache);
 INIT_LIST_HEAD(&drv->client.batch_cache);

 dev_set_drvdata(&pdev->dev, drv);

 return devm_of_platform_populate(&pdev->dev);
}
