
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_syscon {unsigned int mask; int reg; int map; } ;
struct stm32_rproc {unsigned int secured_soc; struct stm32_syscon pdds; struct stm32_syscon hold_boot; int rst; } ;
struct device {struct device_node* of_node; } ;
struct rproc {int auto_boot; struct device dev; struct stm32_rproc* priv; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct rproc*) ;
 int devm_reset_control_get_by_index (struct device*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 struct rproc* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int stm32_rproc_get_syscon (struct device_node*,char*,struct stm32_syscon*) ;
 int stm32_rproc_of_memory_translations (struct rproc*) ;
 int stm32_rproc_wdg ;

__attribute__((used)) static int stm32_rproc_parse_dt(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct rproc *rproc = platform_get_drvdata(pdev);
 struct stm32_rproc *ddata = rproc->priv;
 struct stm32_syscon tz;
 unsigned int tzen;
 int err, irq;

 irq = platform_get_irq(pdev, 0);
 if (irq == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 if (irq > 0) {
  err = devm_request_irq(dev, irq, stm32_rproc_wdg, 0,
           dev_name(dev), rproc);
  if (err) {
   dev_err(dev, "failed to request wdg irq\n");
   return err;
  }

  dev_info(dev, "wdg irq registered\n");
 }

 ddata->rst = devm_reset_control_get_by_index(dev, 0);
 if (IS_ERR(ddata->rst)) {
  dev_err(dev, "failed to get mcu reset\n");
  return PTR_ERR(ddata->rst);
 }






 err = stm32_rproc_get_syscon(np, "st,syscfg-tz", &tz);
 if (err) {
  dev_err(dev, "failed to get tz syscfg\n");
  return err;
 }

 err = regmap_read(tz.map, tz.reg, &tzen);
 if (err) {
  dev_err(&rproc->dev, "failed to read tzen\n");
  return err;
 }
 ddata->secured_soc = tzen & tz.mask;

 err = stm32_rproc_get_syscon(np, "st,syscfg-holdboot",
         &ddata->hold_boot);
 if (err) {
  dev_err(dev, "failed to get hold boot\n");
  return err;
 }

 err = stm32_rproc_get_syscon(np, "st,syscfg-pdds", &ddata->pdds);
 if (err)
  dev_warn(dev, "failed to get pdds\n");

 rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");

 return stm32_rproc_of_memory_translations(rproc);
}
