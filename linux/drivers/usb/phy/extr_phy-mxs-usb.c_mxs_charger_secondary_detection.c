
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct mxs_phy {TYPE_1__ phy; struct regmap* regmap_anatop; } ;
typedef enum usb_charger_type { ____Placeholder_usb_charger_type } usb_charger_type ;


 int ANADIG_USB1_CHRG_DET_STAT ;
 int ANADIG_USB1_CHRG_DET_STAT_DM_STATE ;
 int CDP_TYPE ;
 int DCP_TYPE ;
 int dev_dbg (int ,char*) ;
 int msleep (int) ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static enum usb_charger_type mxs_charger_secondary_detection(struct mxs_phy *x)
{
 struct regmap *regmap = x->regmap_anatop;
 int val;

 msleep(80);

 regmap_read(regmap, ANADIG_USB1_CHRG_DET_STAT, &val);
 if (val & ANADIG_USB1_CHRG_DET_STAT_DM_STATE) {
  dev_dbg(x->phy.dev, "It is a dedicate charging port\n");
  return DCP_TYPE;
 } else {
  dev_dbg(x->phy.dev, "It is a charging downstream port\n");
  return CDP_TYPE;
 }
}
