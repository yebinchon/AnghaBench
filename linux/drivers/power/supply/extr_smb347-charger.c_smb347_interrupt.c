
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb347_charger {int usb; TYPE_1__* pdata; int mains; int battery; int dev; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ use_usb; scalar_t__ use_mains; } ;


 int IRQSTAT_C ;
 unsigned int IRQSTAT_C_TAPER_IRQ ;
 unsigned int IRQSTAT_C_TERMINATION_IRQ ;
 unsigned int IRQSTAT_C_TERMINATION_STAT ;
 int IRQSTAT_D ;
 unsigned int IRQSTAT_D_CHARGE_TIMEOUT_IRQ ;
 unsigned int IRQSTAT_D_CHARGE_TIMEOUT_STAT ;
 int IRQSTAT_E ;
 unsigned int IRQSTAT_E_DCIN_UV_IRQ ;
 unsigned int IRQSTAT_E_USBIN_UV_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STAT_C ;
 unsigned int STAT_C_CHARGER_ERROR ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int power_supply_changed (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int smb347_start_stop_charging (struct smb347_charger*) ;
 scalar_t__ smb347_update_ps_status (struct smb347_charger*) ;

__attribute__((used)) static irqreturn_t smb347_interrupt(int irq, void *data)
{
 struct smb347_charger *smb = data;
 unsigned int stat_c, irqstat_c, irqstat_d, irqstat_e;
 bool handled = 0;
 int ret;

 ret = regmap_read(smb->regmap, STAT_C, &stat_c);
 if (ret < 0) {
  dev_warn(smb->dev, "reading STAT_C failed\n");
  return IRQ_NONE;
 }

 ret = regmap_read(smb->regmap, IRQSTAT_C, &irqstat_c);
 if (ret < 0) {
  dev_warn(smb->dev, "reading IRQSTAT_C failed\n");
  return IRQ_NONE;
 }

 ret = regmap_read(smb->regmap, IRQSTAT_D, &irqstat_d);
 if (ret < 0) {
  dev_warn(smb->dev, "reading IRQSTAT_D failed\n");
  return IRQ_NONE;
 }

 ret = regmap_read(smb->regmap, IRQSTAT_E, &irqstat_e);
 if (ret < 0) {
  dev_warn(smb->dev, "reading IRQSTAT_E failed\n");
  return IRQ_NONE;
 }





 if (stat_c & STAT_C_CHARGER_ERROR) {
  dev_err(smb->dev, "charging stopped due to charger error\n");
  power_supply_changed(smb->battery);
  handled = 1;
 }






 if (irqstat_c & (IRQSTAT_C_TERMINATION_IRQ | IRQSTAT_C_TAPER_IRQ)) {
  if (irqstat_c & IRQSTAT_C_TERMINATION_STAT)
   power_supply_changed(smb->battery);
  dev_dbg(smb->dev, "going to HW maintenance mode\n");
  handled = 1;
 }





 if (irqstat_d & IRQSTAT_D_CHARGE_TIMEOUT_IRQ) {
  dev_dbg(smb->dev, "total Charge Timeout INT received\n");

  if (irqstat_d & IRQSTAT_D_CHARGE_TIMEOUT_STAT)
   dev_warn(smb->dev, "charging stopped due to timeout\n");
  power_supply_changed(smb->battery);
  handled = 1;
 }





 if (irqstat_e & (IRQSTAT_E_USBIN_UV_IRQ | IRQSTAT_E_DCIN_UV_IRQ)) {
  if (smb347_update_ps_status(smb) > 0) {
   smb347_start_stop_charging(smb);
   if (smb->pdata->use_mains)
    power_supply_changed(smb->mains);
   if (smb->pdata->use_usb)
    power_supply_changed(smb->usb);
  }
  handled = 1;
 }

 return handled ? IRQ_HANDLED : IRQ_NONE;
}
