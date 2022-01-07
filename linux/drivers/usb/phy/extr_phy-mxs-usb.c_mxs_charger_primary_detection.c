
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct mxs_phy {TYPE_1__ phy; struct regmap* regmap_anatop; } ;
typedef enum usb_charger_type { ____Placeholder_usb_charger_type } usb_charger_type ;


 int ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B ;
 int ANADIG_USB1_CHRG_DETECT_CHK_CONTACT ;
 int ANADIG_USB1_CHRG_DETECT_CLR ;
 int ANADIG_USB1_CHRG_DETECT_EN_B ;
 int ANADIG_USB1_CHRG_DETECT_SET ;
 int ANADIG_USB1_CHRG_DET_STAT ;
 int ANADIG_USB1_CHRG_DET_STAT_CHRG_DETECTED ;
 int SDP_TYPE ;
 int UNKNOWN_TYPE ;
 int dev_dbg (int ,char*) ;
 int msleep (int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static enum usb_charger_type mxs_charger_primary_detection(struct mxs_phy *x)
{
 struct regmap *regmap = x->regmap_anatop;
 enum usb_charger_type chgr_type = UNKNOWN_TYPE;
 u32 val;






 regmap_write(regmap, ANADIG_USB1_CHRG_DETECT_CLR,
   ANADIG_USB1_CHRG_DETECT_CHK_CONTACT |
   ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);

 msleep(100);


 regmap_read(regmap, ANADIG_USB1_CHRG_DET_STAT, &val);
 if (!(val & ANADIG_USB1_CHRG_DET_STAT_CHRG_DETECTED)) {
  chgr_type = SDP_TYPE;
  dev_dbg(x->phy.dev, "It is a standard downstream port\n");
 }


 regmap_write(regmap, ANADIG_USB1_CHRG_DETECT_SET,
   ANADIG_USB1_CHRG_DETECT_EN_B |
   ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);

 return chgr_type;
}
