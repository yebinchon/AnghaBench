
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned int start; } ;
struct platform_device {int dev; } ;
struct arm_ccn {unsigned int irq; void* xp; void* node; int num_xps; int * dev; int num_nodes; scalar_t__ base; } ;


 scalar_t__ CCN_MN_ERRINT_STATUS ;
 int CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLE ;
 int CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLED ;
 int CCN_MN_ERRINT_STATUS__PMU_EVENTS__ENABLE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_NOBALANCING ;
 int IRQF_NO_THREAD ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int arm_ccn_for_each_valid_region (struct arm_ccn*,int ) ;
 int arm_ccn_get_nodes_num ;
 int arm_ccn_init_nodes ;
 int arm_ccn_irq_handler ;
 int arm_ccn_pmu_init (struct arm_ccn*) ;
 int dev_name (int *) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 void* devm_kcalloc (int *,int ,int,int ) ;
 struct arm_ccn* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,unsigned int,int ,int,int ,struct arm_ccn*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct arm_ccn*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int arm_ccn_probe(struct platform_device *pdev)
{
 struct arm_ccn *ccn;
 struct resource *res;
 unsigned int irq;
 int err;

 ccn = devm_kzalloc(&pdev->dev, sizeof(*ccn), GFP_KERNEL);
 if (!ccn)
  return -ENOMEM;
 ccn->dev = &pdev->dev;
 platform_set_drvdata(pdev, ccn);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ccn->base = devm_ioremap_resource(ccn->dev, res);
 if (IS_ERR(ccn->base))
  return PTR_ERR(ccn->base);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res)
  return -EINVAL;
 irq = res->start;


 writel(CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLE,
   ccn->base + CCN_MN_ERRINT_STATUS);
 if (readl(ccn->base + CCN_MN_ERRINT_STATUS) &
   CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLED) {

  writel(CCN_MN_ERRINT_STATUS__PMU_EVENTS__ENABLE,
    ccn->base + CCN_MN_ERRINT_STATUS);
  err = devm_request_irq(ccn->dev, irq, arm_ccn_irq_handler,
           IRQF_NOBALANCING | IRQF_NO_THREAD,
           dev_name(ccn->dev), ccn);
  if (err)
   return err;

  ccn->irq = irq;
 }




 err = arm_ccn_for_each_valid_region(ccn, arm_ccn_get_nodes_num);
 if (err)
  return err;

 ccn->node = devm_kcalloc(ccn->dev, ccn->num_nodes, sizeof(*ccn->node),
     GFP_KERNEL);
 ccn->xp = devm_kcalloc(ccn->dev, ccn->num_xps, sizeof(*ccn->node),
          GFP_KERNEL);
 if (!ccn->node || !ccn->xp)
  return -ENOMEM;

 err = arm_ccn_for_each_valid_region(ccn, arm_ccn_init_nodes);
 if (err)
  return err;

 return arm_ccn_pmu_init(ccn);
}
