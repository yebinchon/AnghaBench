
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slg51000 {int dev; int * rdev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ereg; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REGULATOR_EVENT_OVER_CURRENT ;
 int REGULATOR_EVENT_OVER_TEMP ;
 unsigned int SLG51000_EVT_CRC_MASK ;
 int SLG51000_EVT_HIGH_TEMP_WARN_MASK ;
 int SLG51000_EVT_ILIM_FLAG_MASK ;
 unsigned int SLG51000_IRQ_CRC_MASK ;
 int SLG51000_IRQ_HIGH_TEMP_WARN_MASK ;
 int SLG51000_IRQ_ILIM_FLAG_MASK ;
 int SLG51000_MAX_EVT_REGISTER ;
 int SLG51000_MAX_REGULATORS ;
 int SLG51000_OTP_EVENT ;
 int SLG51000_OTP_IRQ_MASK ;
 size_t SLG51000_SCTL_EVT ;
 int SLG51000_STA_HIGH_TEMP_WARN_MASK ;
 int SLG51000_STA_ILIM_FLAG_MASK ;
 int SLG51000_STA_VOUT_OK_FLAG_MASK ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*,...) ;
 TYPE_1__* es_reg ;
 int regmap_bulk_read (struct regmap*,int ,int*,int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,int ,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t slg51000_irq_handler(int irq, void *data)
{
 struct slg51000 *chip = data;
 struct regmap *regmap = chip->regmap;
 enum { R0 = 0, R1, R2, REG_MAX };
 u8 evt[SLG51000_MAX_EVT_REGISTER][REG_MAX];
 int ret, i, handled = IRQ_NONE;
 unsigned int evt_otp, mask_otp;


 for (i = 0; i < SLG51000_MAX_EVT_REGISTER; i++) {
  ret = regmap_bulk_read(regmap, es_reg[i].ereg, evt[i], REG_MAX);
  if (ret < 0) {
   dev_err(chip->dev,
    "Failed to read event registers(%d)\n", ret);
   return IRQ_NONE;
  }
 }

 ret = regmap_read(regmap, SLG51000_OTP_EVENT, &evt_otp);
 if (ret < 0) {
  dev_err(chip->dev,
   "Failed to read otp event registers(%d)\n", ret);
  return IRQ_NONE;
 }

 ret = regmap_read(regmap, SLG51000_OTP_IRQ_MASK, &mask_otp);
 if (ret < 0) {
  dev_err(chip->dev,
   "Failed to read otp mask register(%d)\n", ret);
  return IRQ_NONE;
 }

 if ((evt_otp & SLG51000_EVT_CRC_MASK) &&
     !(mask_otp & SLG51000_IRQ_CRC_MASK)) {
  dev_info(chip->dev,
    "OTP has been read or OTP crc is not zero\n");
  handled = IRQ_HANDLED;
 }

 for (i = 0; i < SLG51000_MAX_REGULATORS; i++) {
  if (!(evt[i][R2] & SLG51000_IRQ_ILIM_FLAG_MASK) &&
      (evt[i][R0] & SLG51000_EVT_ILIM_FLAG_MASK)) {
   regulator_lock(chip->rdev[i]);
   regulator_notifier_call_chain(chip->rdev[i],
         REGULATOR_EVENT_OVER_CURRENT, ((void*)0));
   regulator_unlock(chip->rdev[i]);

   if (evt[i][R1] & SLG51000_STA_ILIM_FLAG_MASK)
    dev_warn(chip->dev,
      "Over-current limit(ldo%d)\n", i + 1);
   handled = IRQ_HANDLED;
  }
 }

 if (!(evt[SLG51000_SCTL_EVT][R2] & SLG51000_IRQ_HIGH_TEMP_WARN_MASK) &&
     (evt[SLG51000_SCTL_EVT][R0] & SLG51000_EVT_HIGH_TEMP_WARN_MASK)) {
  for (i = 0; i < SLG51000_MAX_REGULATORS; i++) {
   if (!(evt[i][R1] & SLG51000_STA_ILIM_FLAG_MASK) &&
       (evt[i][R1] & SLG51000_STA_VOUT_OK_FLAG_MASK)) {
    regulator_lock(chip->rdev[i]);
    regulator_notifier_call_chain(chip->rdev[i],
            REGULATOR_EVENT_OVER_TEMP, ((void*)0));
    regulator_unlock(chip->rdev[i]);
   }
  }
  handled = IRQ_HANDLED;
  if (evt[SLG51000_SCTL_EVT][R1] &
      SLG51000_STA_HIGH_TEMP_WARN_MASK)
   dev_warn(chip->dev, "High temperature warning!\n");
 }

 return handled;
}
