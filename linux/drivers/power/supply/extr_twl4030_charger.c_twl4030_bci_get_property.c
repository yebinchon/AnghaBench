
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
typedef int u8 ;
struct twl4030_bci {int ac_cur; int usb_cur_target; int ac_is_active; } ;
struct TYPE_3__ {int parent; } ;
struct power_supply {TYPE_2__* desc; TYPE_1__ dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENODATA ;





 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 scalar_t__ POWER_SUPPLY_TYPE_USB ;
 int TWL4030_BCICTL1 ;
 int TWL4030_BCIIREF1 ;
 int TWL4030_BCIMDEN ;
 int TWL4030_BCIVAC ;
 int TWL4030_BCIVBUS ;
 int TWL4030_CGAIN ;
 int TWL4030_MSTATEC_AC ;
 int TWL4030_MSTATEC_QUICK1 ;
 int TWL4030_MSTATEC_USB ;
 struct twl4030_bci* dev_get_drvdata (int ) ;
 int regval2ua (int,int) ;
 int twl4030_bci_read (int ,int*) ;
 void* twl4030_bci_state_to_status (int) ;
 int twl4030_charger_get_current () ;
 void* twl4030bci_read_adc_val (int ) ;
 int twl4030bci_state (struct twl4030_bci*) ;

__attribute__((used)) static int twl4030_bci_get_property(struct power_supply *psy,
        enum power_supply_property psp,
        union power_supply_propval *val)
{
 struct twl4030_bci *bci = dev_get_drvdata(psy->dev.parent);
 int is_charging;
 int state;
 int ret;

 state = twl4030bci_state(bci);
 if (state < 0)
  return state;

 if (psy->desc->type == POWER_SUPPLY_TYPE_USB)
  is_charging = state & TWL4030_MSTATEC_USB;
 else
  is_charging = state & TWL4030_MSTATEC_AC;
 if (!is_charging) {
  u8 s;
  ret = twl4030_bci_read(TWL4030_BCIMDEN, &s);
  if (ret < 0)
   return ret;
  if (psy->desc->type == POWER_SUPPLY_TYPE_USB)
   is_charging = s & 1;
  else
   is_charging = s & 2;
  if (is_charging)

   state = TWL4030_MSTATEC_QUICK1;
 }

 switch (psp) {
 case 129:
  if (is_charging)
   val->intval = twl4030_bci_state_to_status(state);
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 128:

  if (!is_charging)
   return -ENODATA;
  if (psy->desc->type == POWER_SUPPLY_TYPE_USB) {
   ret = twl4030bci_read_adc_val(TWL4030_BCIVBUS);
   if (ret < 0)
    return ret;

   val->intval = ret * 6843;
  } else {
   ret = twl4030bci_read_adc_val(TWL4030_BCIVAC);
   if (ret < 0)
    return ret;

   val->intval = ret * 9775;
  }
  break;
 case 132:
  if (!is_charging)
   return -ENODATA;

  ret = twl4030_charger_get_current();
  if (ret < 0)
   return ret;
  val->intval = ret;
  break;
 case 130:
  val->intval = is_charging &&
   twl4030_bci_state_to_status(state) !=
    POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 131:
  val->intval = -1;
  if (psy->desc->type != POWER_SUPPLY_TYPE_USB) {
   if (!bci->ac_is_active)
    val->intval = bci->ac_cur;
  } else {
   if (bci->ac_is_active)
    val->intval = bci->usb_cur_target;
  }
  if (val->intval < 0) {
   u8 bcictl1;

   val->intval = twl4030bci_read_adc_val(TWL4030_BCIIREF1);
   if (val->intval < 0)
    return val->intval;
   ret = twl4030_bci_read(TWL4030_BCICTL1, &bcictl1);
   if (ret < 0)
    return ret;
   val->intval = regval2ua(val->intval, bcictl1 &
       TWL4030_CGAIN);
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
