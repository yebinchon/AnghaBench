
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {TYPE_2__* desc; int num_supplicants; scalar_t__ supplied_to; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int percent; int volt; int temp; int inst_curr; int avg_curr; } ;
struct TYPE_7__ {int batt_rem; int mainextchnotok; int main_thermal_prot; int main_ovv; int ac_wd_expired; int usbchargernotok; int usb_thermal_prot; int vbus_ovv; int usb_wd_expired; int ac_cv_active; int usb_cv_active; int batt_unknown; int vbus_collapsed; } ;
struct TYPE_5__ {int conn_chg; int prev_conn_chg; int online_chg; int prev_online_chg; int ac_volt; int usb_volt; int ac_curr; int usb_curr; } ;
struct abx500_chargalg {TYPE_4__ batt_data; TYPE_3__ events; TYPE_1__ chg_info; int chargalg_wd_work; int chargalg_wq; void* usb_chg; void* ac_chg; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_6__ {int num_properties; int* properties; scalar_t__ type; int name; } ;


 int AC_CHG ;
 int USB_CHG ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int match_string (char const**,int ,int ) ;
 struct abx500_chargalg* power_supply_get_drvdata (struct power_supply*) ;
 scalar_t__ power_supply_get_property (struct power_supply*,int,union power_supply_propval*) ;
 void* psy_to_ux500_charger (struct power_supply*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int abx500_chargalg_get_ext_psy_data(struct device *dev, void *data)
{
 struct power_supply *psy;
 struct power_supply *ext = dev_get_drvdata(dev);
 const char **supplicants = (const char **)ext->supplied_to;
 struct abx500_chargalg *di;
 union power_supply_propval ret;
 int j;
 bool capacity_updated = 0;

 psy = (struct power_supply *)data;
 di = power_supply_get_drvdata(psy);

 j = match_string(supplicants, ext->num_supplicants, psy->desc->name);
 if (j < 0)
  return 0;






 if (!power_supply_get_property(ext, 140, &ret)) {
  di->batt_data.percent = ret.intval;
  capacity_updated = 1;
 }


 for (j = 0; j < ext->desc->num_properties; j++) {
  enum power_supply_property prop;
  prop = ext->desc->properties[j];




  if (!di->ac_chg &&
   ext->desc->type == 129)
   di->ac_chg = psy_to_ux500_charger(ext);
  else if (!di->usb_chg &&
   ext->desc->type == 128)
   di->usb_chg = psy_to_ux500_charger(ext);

  if (power_supply_get_property(ext, prop, &ret))
   continue;
  switch (prop) {
  case 135:
   switch (ext->desc->type) {
   case 130:

    if (ret.intval)
     di->events.batt_rem = 0;

    else
     di->events.batt_rem = 1;
    break;
   case 129:

    if (!ret.intval &&
     (di->chg_info.conn_chg & AC_CHG)) {
     di->chg_info.prev_conn_chg =
      di->chg_info.conn_chg;
     di->chg_info.conn_chg &= ~AC_CHG;
    }

    else if (ret.intval &&
     !(di->chg_info.conn_chg & AC_CHG)) {
     di->chg_info.prev_conn_chg =
      di->chg_info.conn_chg;
     di->chg_info.conn_chg |= AC_CHG;
    }
    break;
   case 128:

    if (!ret.intval &&
     (di->chg_info.conn_chg & USB_CHG)) {
     di->chg_info.prev_conn_chg =
      di->chg_info.conn_chg;
     di->chg_info.conn_chg &= ~USB_CHG;
    }

    else if (ret.intval &&
     !(di->chg_info.conn_chg & USB_CHG)) {
     di->chg_info.prev_conn_chg =
      di->chg_info.conn_chg;
     di->chg_info.conn_chg |= USB_CHG;
    }
    break;
   default:
    break;
   }
   break;

  case 136:
   switch (ext->desc->type) {
   case 130:
    break;
   case 129:

    if (!ret.intval &&
     (di->chg_info.online_chg & AC_CHG)) {
     di->chg_info.prev_online_chg =
      di->chg_info.online_chg;
     di->chg_info.online_chg &= ~AC_CHG;
    }

    else if (ret.intval &&
     !(di->chg_info.online_chg & AC_CHG)) {
     di->chg_info.prev_online_chg =
      di->chg_info.online_chg;
     di->chg_info.online_chg |= AC_CHG;
     queue_delayed_work(di->chargalg_wq,
      &di->chargalg_wd_work, 0);
    }
    break;
   case 128:

    if (!ret.intval &&
     (di->chg_info.online_chg & USB_CHG)) {
     di->chg_info.prev_online_chg =
      di->chg_info.online_chg;
     di->chg_info.online_chg &= ~USB_CHG;
    }

    else if (ret.intval &&
     !(di->chg_info.online_chg & USB_CHG)) {
     di->chg_info.prev_online_chg =
      di->chg_info.online_chg;
     di->chg_info.online_chg |= USB_CHG;
     queue_delayed_work(di->chargalg_wq,
      &di->chargalg_wd_work, 0);
    }
    break;
   default:
    break;
   }
   break;

  case 137:
   switch (ext->desc->type) {
   case 130:
    break;
   case 129:
    switch (ret.intval) {
    case 141:
     di->events.mainextchnotok = 1;
     di->events.main_thermal_prot = 0;
     di->events.main_ovv = 0;
     di->events.ac_wd_expired = 0;
     break;
    case 145:
     di->events.ac_wd_expired = 1;
     di->events.mainextchnotok = 0;
     di->events.main_ovv = 0;
     di->events.main_thermal_prot = 0;
     break;
    case 146:
    case 143:
     di->events.main_thermal_prot = 1;
     di->events.mainextchnotok = 0;
     di->events.main_ovv = 0;
     di->events.ac_wd_expired = 0;
     break;
    case 142:
     di->events.main_ovv = 1;
     di->events.mainextchnotok = 0;
     di->events.main_thermal_prot = 0;
     di->events.ac_wd_expired = 0;
     break;
    case 144:
     di->events.main_thermal_prot = 0;
     di->events.mainextchnotok = 0;
     di->events.main_ovv = 0;
     di->events.ac_wd_expired = 0;
     break;
    default:
     break;
    }
    break;

   case 128:
    switch (ret.intval) {
    case 141:
     di->events.usbchargernotok = 1;
     di->events.usb_thermal_prot = 0;
     di->events.vbus_ovv = 0;
     di->events.usb_wd_expired = 0;
     break;
    case 145:
     di->events.usb_wd_expired = 1;
     di->events.usbchargernotok = 0;
     di->events.usb_thermal_prot = 0;
     di->events.vbus_ovv = 0;
     break;
    case 146:
    case 143:
     di->events.usb_thermal_prot = 1;
     di->events.usbchargernotok = 0;
     di->events.vbus_ovv = 0;
     di->events.usb_wd_expired = 0;
     break;
    case 142:
     di->events.vbus_ovv = 1;
     di->events.usbchargernotok = 0;
     di->events.usb_thermal_prot = 0;
     di->events.usb_wd_expired = 0;
     break;
    case 144:
     di->events.usbchargernotok = 0;
     di->events.usb_thermal_prot = 0;
     di->events.vbus_ovv = 0;
     di->events.usb_wd_expired = 0;
     break;
    default:
     break;
    }
   default:
    break;
   }
   break;

  case 131:
   switch (ext->desc->type) {
   case 130:
    di->batt_data.volt = ret.intval / 1000;
    break;
   case 129:
    di->chg_info.ac_volt = ret.intval / 1000;
    break;
   case 128:
    di->chg_info.usb_volt = ret.intval / 1000;
    break;
   default:
    break;
   }
   break;

  case 132:
   switch (ext->desc->type) {
   case 129:


    if (ret.intval)
     di->events.ac_cv_active = 1;
    else
     di->events.ac_cv_active = 0;

    break;
   case 128:


    if (ret.intval)
     di->events.usb_cv_active = 1;
    else
     di->events.usb_cv_active = 0;

    break;
   default:
    break;
   }
   break;

  case 134:
   switch (ext->desc->type) {
   case 130:
    if (ret.intval)
     di->events.batt_unknown = 0;
    else
     di->events.batt_unknown = 1;

    break;
   default:
    break;
   }
   break;

  case 133:
   di->batt_data.temp = ret.intval / 10;
   break;

  case 138:
   switch (ext->desc->type) {
   case 129:
     di->chg_info.ac_curr =
      ret.intval / 1000;
     break;
   case 128:
     di->chg_info.usb_curr =
      ret.intval / 1000;
    break;
   case 130:
    di->batt_data.inst_curr = ret.intval / 1000;
    break;
   default:
    break;
   }
   break;

  case 139:
   switch (ext->desc->type) {
   case 130:
    di->batt_data.avg_curr = ret.intval / 1000;
    break;
   case 128:
    if (ret.intval)
     di->events.vbus_collapsed = 1;
    else
     di->events.vbus_collapsed = 0;
    break;
   default:
    break;
   }
   break;
  case 140:
   if (!capacity_updated)
    di->batt_data.percent = ret.intval;
   break;
  default:
   break;
  }
 }
 return 0;
}
