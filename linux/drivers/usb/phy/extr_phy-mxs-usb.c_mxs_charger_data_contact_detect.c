
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct mxs_phy {TYPE_1__ phy; struct regmap* regmap_anatop; } ;


 int ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B ;
 int ANADIG_USB1_CHRG_DETECT_CHK_CONTACT ;
 int ANADIG_USB1_CHRG_DETECT_CLR ;
 int ANADIG_USB1_CHRG_DETECT_EN_B ;
 int ANADIG_USB1_CHRG_DETECT_SET ;
 int ANADIG_USB1_CHRG_DET_STAT ;
 int ANADIG_USB1_CHRG_DET_STAT_PLUG_CONTACT ;
 int ANADIG_USB1_VBUS_DET_STAT ;
 int ANADIG_USB1_VBUS_DET_STAT_VBUS_VALID ;
 int EINVAL ;
 int ENXIO ;
 int MXS_USB_CHARGER_DATA_CONTACT_TIMEOUT ;
 int dev_err (int ,char*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mxs_charger_data_contact_detect(struct mxs_phy *x)
{
 struct regmap *regmap = x->regmap_anatop;
 int i, stable_contact_count = 0;
 u32 val;


 regmap_read(regmap, ANADIG_USB1_VBUS_DET_STAT, &val);
 if (!(val & ANADIG_USB1_VBUS_DET_STAT_VBUS_VALID)) {
  dev_err(x->phy.dev, "vbus is not valid\n");
  return -EINVAL;
 }


 regmap_write(regmap, ANADIG_USB1_CHRG_DETECT_CLR,
    ANADIG_USB1_CHRG_DETECT_EN_B);




 regmap_write(regmap, ANADIG_USB1_CHRG_DETECT_SET,
   ANADIG_USB1_CHRG_DETECT_CHK_CONTACT |
   ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);


 for (i = 0; i < MXS_USB_CHARGER_DATA_CONTACT_TIMEOUT; i++) {
  regmap_read(regmap, ANADIG_USB1_CHRG_DET_STAT, &val);
  if (val & ANADIG_USB1_CHRG_DET_STAT_PLUG_CONTACT) {
   stable_contact_count++;
   if (stable_contact_count > 5)

    break;
   else
    usleep_range(5000, 10000);
  } else {
   stable_contact_count = 0;
   usleep_range(5000, 6000);
  }
 }

 if (i == MXS_USB_CHARGER_DATA_CONTACT_TIMEOUT) {
  dev_err(x->phy.dev,
   "Data pin can't make good contact.\n");

  regmap_write(regmap, ANADIG_USB1_CHRG_DETECT_SET,
    ANADIG_USB1_CHRG_DETECT_EN_B |
    ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);
  return -ENXIO;
 }

 return 0;
}
