
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wcove_tmu {int irq; int regmap; TYPE_1__* dev; } ;
struct regmap_irq_chip_data {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {struct regmap_irq_chip_data* irq_chip_data_tmu; int regmap; } ;


 int BXTWC_MTMUIRQ_REG ;
 int BXTWC_TMU_ALRM_MASK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int bxt_wcove_tmu_irq_handler ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 struct wcove_tmu* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct wcove_tmu*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wcove_tmu*) ;
 int regmap_irq_get_virq (struct regmap_irq_chip_data*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bxt_wcove_tmu_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(pdev->dev.parent);
 struct regmap_irq_chip_data *regmap_irq_chip;
 struct wcove_tmu *wctmu;
 int ret, virq, irq;

 wctmu = devm_kzalloc(&pdev->dev, sizeof(*wctmu), GFP_KERNEL);
 if (!wctmu)
  return -ENOMEM;

 wctmu->dev = &pdev->dev;
 wctmu->regmap = pmic->regmap;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 regmap_irq_chip = pmic->irq_chip_data_tmu;
 virq = regmap_irq_get_virq(regmap_irq_chip, irq);
 if (virq < 0) {
  dev_err(&pdev->dev,
   "failed to get virtual interrupt=%d\n", irq);
  return virq;
 }

 ret = devm_request_threaded_irq(&pdev->dev, virq,
     ((void*)0), bxt_wcove_tmu_irq_handler,
     IRQF_ONESHOT, "bxt_wcove_tmu", wctmu);
 if (ret) {
  dev_err(&pdev->dev, "request irq failed: %d,virq: %d\n",
       ret, virq);
  return ret;
 }
 wctmu->irq = virq;


 regmap_update_bits(wctmu->regmap, BXTWC_MTMUIRQ_REG,
      BXTWC_TMU_ALRM_MASK, 0);

 platform_set_drvdata(pdev, wctmu);
 return 0;
}
