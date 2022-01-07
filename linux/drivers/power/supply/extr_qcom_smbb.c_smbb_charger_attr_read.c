
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger_attr {unsigned int (* hw_fn ) (unsigned int) ;int name; scalar_t__ reg; } ;
struct smbb_charger {unsigned int* attr; int dev; scalar_t__ addr; int regmap; } ;
typedef enum smbb_attr { ____Placeholder_smbb_attr } smbb_attr ;


 int dev_dbg (int ,char*,int ,unsigned int) ;
 int dev_err (int ,char*,int ) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 struct smbb_charger_attr* smbb_charger_attrs ;
 unsigned int stub1 (unsigned int) ;

__attribute__((used)) static int smbb_charger_attr_read(struct smbb_charger *chg,
  enum smbb_attr which)
{
 const struct smbb_charger_attr *prop;
 unsigned int val;
 int rc;

 prop = &smbb_charger_attrs[which];

 rc = regmap_read(chg->regmap, chg->addr + prop->reg, &val);
 if (rc) {
  dev_err(chg->dev, "failed to read %s\n", prop->name);
  return rc;
 }
 val = prop->hw_fn(val);
 dev_dbg(chg->dev, "%s => %d\n", prop->name, val);

 chg->attr[which] = val;

 return 0;
}
