
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int GFP_KERNEL ;





 char* devm_kasprintf (struct device*,int ,char*,...) ;

__attribute__((used)) static char *xgene_pmu_dev_name(struct device *dev, u32 type, int id)
{
 switch (type) {
 case 130:
  return devm_kasprintf(dev, GFP_KERNEL, "l3c%d", id);
 case 132:
  return devm_kasprintf(dev, GFP_KERNEL, "iob%d", id);
 case 131:
  return devm_kasprintf(dev, GFP_KERNEL, "iob_slow%d", id);
 case 128:
  return devm_kasprintf(dev, GFP_KERNEL, "mcb%d", id);
 case 129:
  return devm_kasprintf(dev, GFP_KERNEL, "mc%d", id);
 default:
  return devm_kasprintf(dev, GFP_KERNEL, "unknown");
 }
}
