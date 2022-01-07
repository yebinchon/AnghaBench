
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int safety_timer_expired; scalar_t__ btemp_underover; scalar_t__ usb_wd_expired; scalar_t__ ac_wd_expired; scalar_t__ btemp_lowhigh; int maintenance_timer_expired; scalar_t__ usbchargernotok; scalar_t__ mainextchnotok; scalar_t__ batt_ovv; scalar_t__ main_ovv; scalar_t__ vbus_ovv; scalar_t__ usb_thermal_prot; scalar_t__ main_thermal_prot; scalar_t__ batt_rem; int usb_cv_active; int ac_cv_active; int vbus_collapsed; scalar_t__ batt_unknown; } ;
struct TYPE_11__ {int percent; int temp; int inst_curr; int avg_curr; int volt; } ;
struct TYPE_10__ {int curr_step; } ;
struct TYPE_9__ {int conn_chg; int online_chg; scalar_t__ ac_chg_ok; scalar_t__ usb_chg_ok; int usb_iset; int usb_vset; int ac_iset; int ac_vset; int usb_curr; int ac_curr; int charger_type; } ;
struct TYPE_8__ {int usb_suspended; int ac_suspended; } ;
struct abx500_chargalg {int charge_state; int maintenance_chg; int chargalg_work; int chargalg_wq; TYPE_7__ events; int chargalg_psy; void* charge_status; TYPE_6__* bm; TYPE_4__ batt_data; int eoc_cnt; TYPE_3__ curr_status; TYPE_2__ chg_info; TYPE_1__ susp_status; int dev; int parent; } ;
struct TYPE_13__ {size_t batt_id; TYPE_5__* bat_type; int no_maintenance; int chg_unknown_bat; } ;
struct TYPE_12__ {int normal_cur_lvl; int maint_a_cur_lvl; int maint_b_cur_lvl; int low_high_cur_lvl; int low_high_vol_lvl; int maint_b_vol_lvl; int maint_b_chg_timer_h; int maint_a_vol_lvl; int maint_a_chg_timer_h; int recharge_cap; int normal_vol_lvl; } ;


 int AC_CHG ;
 int CHARGALG_CURR_STEP_HIGH ;
 int CHARGALG_CURR_STEP_LOW ;
 void* POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_DISCHARGING ;
 void* POWER_SUPPLY_STATUS_FULL ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int USB_CHG ;
 int abx500_chargalg_ac_en (struct abx500_chargalg*,int,int ,int ) ;
 int abx500_chargalg_check_charger_connection (struct abx500_chargalg*) ;
 int abx500_chargalg_check_charger_enable (struct abx500_chargalg*) ;
 int abx500_chargalg_check_charger_voltage (struct abx500_chargalg*) ;
 int abx500_chargalg_check_current_step_status (struct abx500_chargalg*) ;
 int abx500_chargalg_check_temp (struct abx500_chargalg*) ;
 int abx500_chargalg_end_of_charge (struct abx500_chargalg*) ;
 int abx500_chargalg_get_ext_psy_data ;
 int abx500_chargalg_hold_charging (struct abx500_chargalg*) ;
 int abx500_chargalg_start_charging (struct abx500_chargalg*,int ,int) ;
 int abx500_chargalg_start_maintenance_timer (struct abx500_chargalg*,int ) ;
 int abx500_chargalg_start_safety_timer (struct abx500_chargalg*) ;
 int abx500_chargalg_state_to (struct abx500_chargalg*,int const) ;
 int abx500_chargalg_stop_charging (struct abx500_chargalg*) ;
 int abx500_chargalg_stop_maintenance_timer (struct abx500_chargalg*) ;
 int abx500_chargalg_stop_safety_timer (struct abx500_chargalg*) ;
 int abx500_chargalg_usb_en (struct abx500_chargalg*,int,int ,int ) ;
 int class_for_each_device (int ,int *,int ,int ) ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int,int ,int ,void*,int,int,int,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int handle_maxim_chg_curr (struct abx500_chargalg*) ;
 int init_maxim_chg_curr (struct abx500_chargalg*) ;
 scalar_t__ is_ab8500 (int ) ;
 int power_supply_changed (int ) ;
 int power_supply_class ;
 int queue_work (int ,int *) ;
 int * states ;

__attribute__((used)) static void abx500_chargalg_algorithm(struct abx500_chargalg *di)
{
 int charger_status;
 int ret;
 int curr_step_lvl;


 class_for_each_device(power_supply_class, ((void*)0),
  di->chargalg_psy, abx500_chargalg_get_ext_psy_data);

 abx500_chargalg_end_of_charge(di);
 abx500_chargalg_check_temp(di);
 abx500_chargalg_check_charger_voltage(di);

 charger_status = abx500_chargalg_check_charger_connection(di);
 abx500_chargalg_check_current_step_status(di);

 if (is_ab8500(di->parent)) {
  ret = abx500_chargalg_check_charger_enable(di);
  if (ret < 0)
   dev_err(di->dev, "Checking charger is enabled error"
     ": Returned Value %d\n", ret);
 }






 if (!charger_status ||
  (di->events.batt_unknown && !di->bm->chg_unknown_bat)) {
  if (di->charge_state != 151) {
   di->events.safety_timer_expired = 0;
   abx500_chargalg_state_to(di, 150);
  }
 }


 else if (di->charge_state == 136 ||
  di->charge_state == 137) {

 }


 else if (di->events.safety_timer_expired) {
  if (di->charge_state != 139)
   abx500_chargalg_state_to(di,
    138);
 }






 else if (di->events.batt_rem) {
  if (di->charge_state != 155)
   abx500_chargalg_state_to(di, 154);
 }

 else if (di->events.mainextchnotok || di->events.usbchargernotok) {




  if (di->charge_state != 153 &&
    !di->events.vbus_collapsed)
   abx500_chargalg_state_to(di, 152);
 }

 else if (di->events.vbus_ovv ||
   di->events.main_ovv ||
   di->events.batt_ovv ||
   !di->chg_info.usb_chg_ok ||
   !di->chg_info.ac_chg_ok) {
  if (di->charge_state != 141)
   abx500_chargalg_state_to(di, 140);
 }

 else if (di->events.main_thermal_prot ||
  di->events.usb_thermal_prot) {
  if (di->charge_state != 149)
   abx500_chargalg_state_to(di,
    148);
 }

 else if (di->events.btemp_underover) {
  if (di->charge_state != 133)
   abx500_chargalg_state_to(di,
    132);
 }

 else if (di->events.ac_wd_expired ||
  di->events.usb_wd_expired) {
  if (di->charge_state != 129)
   abx500_chargalg_state_to(di, 128);
 }

 else if (di->events.btemp_lowhigh) {
  if (di->charge_state != 135)
   abx500_chargalg_state_to(di, 134);
 }

 dev_dbg(di->dev,
  "[CHARGALG] Vb %d Ib_avg %d Ib_inst %d Tb %d Cap %d Maint %d "
  "State %s Active_chg %d Chg_status %d AC %d USB %d "
  "AC_online %d USB_online %d AC_CV %d USB_CV %d AC_I %d "
  "USB_I %d AC_Vset %d AC_Iset %d USB_Vset %d USB_Iset %d\n",
  di->batt_data.volt,
  di->batt_data.avg_curr,
  di->batt_data.inst_curr,
  di->batt_data.temp,
  di->batt_data.percent,
  di->maintenance_chg,
  states[di->charge_state],
  di->chg_info.charger_type,
  di->charge_status,
  di->chg_info.conn_chg & AC_CHG,
  di->chg_info.conn_chg & USB_CHG,
  di->chg_info.online_chg & AC_CHG,
  di->chg_info.online_chg & USB_CHG,
  di->events.ac_cv_active,
  di->events.usb_cv_active,
  di->chg_info.ac_curr,
  di->chg_info.usb_curr,
  di->chg_info.ac_vset,
  di->chg_info.ac_iset,
  di->chg_info.usb_vset,
  di->chg_info.usb_iset);

 switch (di->charge_state) {
 case 150:
  abx500_chargalg_stop_charging(di);
  di->charge_status = POWER_SUPPLY_STATUS_DISCHARGING;
  abx500_chargalg_state_to(di, 151);


 case 151:
  break;

 case 136:
  if (di->susp_status.ac_suspended)
   abx500_chargalg_ac_en(di, 0, 0, 0);
  if (di->susp_status.usb_suspended)
   abx500_chargalg_usb_en(di, 0, 0, 0);
  abx500_chargalg_stop_safety_timer(di);
  abx500_chargalg_stop_maintenance_timer(di);
  di->charge_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  di->maintenance_chg = 0;
  abx500_chargalg_state_to(di, 137);
  power_supply_changed(di->chargalg_psy);


 case 137:

  break;

 case 154:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 155);


 case 155:
  if (!di->events.batt_rem)
   abx500_chargalg_state_to(di, 142);
  break;

 case 148:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 149);


 case 149:
  if (!di->events.main_thermal_prot &&
    !di->events.usb_thermal_prot)
   abx500_chargalg_state_to(di, 142);
  break;

 case 140:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 141);


 case 141:
  if (!di->events.vbus_ovv &&
    !di->events.main_ovv &&
    !di->events.batt_ovv &&
    di->chg_info.usb_chg_ok &&
    di->chg_info.ac_chg_ok)
   abx500_chargalg_state_to(di, 142);
  break;

 case 152:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 153);


 case 153:
  if (!di->events.mainextchnotok &&
    !di->events.usbchargernotok)
   abx500_chargalg_state_to(di, 142);
  break;

 case 138:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 139);


 case 139:

  break;

 case 142:
  if (di->curr_status.curr_step == CHARGALG_CURR_STEP_LOW)
   abx500_chargalg_stop_charging(di);
  else {
   curr_step_lvl = di->bm->bat_type[
    di->bm->batt_id].normal_cur_lvl
    * di->curr_status.curr_step
    / CHARGALG_CURR_STEP_HIGH;
   abx500_chargalg_start_charging(di,
    di->bm->bat_type[di->bm->batt_id]
    .normal_vol_lvl, curr_step_lvl);
  }

  abx500_chargalg_state_to(di, 143);
  abx500_chargalg_start_safety_timer(di);
  abx500_chargalg_stop_maintenance_timer(di);
  init_maxim_chg_curr(di);
  di->charge_status = POWER_SUPPLY_STATUS_CHARGING;
  di->eoc_cnt = 0;
  di->maintenance_chg = 0;
  power_supply_changed(di->chargalg_psy);

  break;

 case 143:
  handle_maxim_chg_curr(di);
  if (di->charge_status == POWER_SUPPLY_STATUS_FULL &&
   di->maintenance_chg) {
   if (di->bm->no_maintenance)
    abx500_chargalg_state_to(di,
     130);
   else
    abx500_chargalg_state_to(di,
     146);
  }
  break;


 case 130:
  abx500_chargalg_hold_charging(di);
  abx500_chargalg_state_to(di, 131);


 case 131:
  if (di->batt_data.percent <=
      di->bm->bat_type[di->bm->batt_id].
      recharge_cap)
   abx500_chargalg_state_to(di, 142);
  break;

 case 146:
  abx500_chargalg_stop_safety_timer(di);
  abx500_chargalg_start_maintenance_timer(di,
   di->bm->bat_type[
    di->bm->batt_id].maint_a_chg_timer_h);
  abx500_chargalg_start_charging(di,
   di->bm->bat_type[
    di->bm->batt_id].maint_a_vol_lvl,
   di->bm->bat_type[
    di->bm->batt_id].maint_a_cur_lvl);
  abx500_chargalg_state_to(di, 147);
  power_supply_changed(di->chargalg_psy);


 case 147:
  if (di->events.maintenance_timer_expired) {
   abx500_chargalg_stop_maintenance_timer(di);
   abx500_chargalg_state_to(di, 144);
  }
  break;

 case 144:
  abx500_chargalg_start_maintenance_timer(di,
   di->bm->bat_type[
    di->bm->batt_id].maint_b_chg_timer_h);
  abx500_chargalg_start_charging(di,
   di->bm->bat_type[
    di->bm->batt_id].maint_b_vol_lvl,
   di->bm->bat_type[
    di->bm->batt_id].maint_b_cur_lvl);
  abx500_chargalg_state_to(di, 145);
  power_supply_changed(di->chargalg_psy);


 case 145:
  if (di->events.maintenance_timer_expired) {
   abx500_chargalg_stop_maintenance_timer(di);
   abx500_chargalg_state_to(di, 142);
  }
  break;

 case 134:
  abx500_chargalg_start_charging(di,
   di->bm->bat_type[
    di->bm->batt_id].low_high_vol_lvl,
   di->bm->bat_type[
    di->bm->batt_id].low_high_cur_lvl);
  abx500_chargalg_stop_maintenance_timer(di);
  di->charge_status = POWER_SUPPLY_STATUS_CHARGING;
  abx500_chargalg_state_to(di, 135);
  power_supply_changed(di->chargalg_psy);


 case 135:
  if (!di->events.btemp_lowhigh)
   abx500_chargalg_state_to(di, 142);
  break;

 case 128:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 129);


 case 129:
  if (!di->events.ac_wd_expired &&
    !di->events.usb_wd_expired)
   abx500_chargalg_state_to(di, 142);
  break;

 case 132:
  abx500_chargalg_stop_charging(di);
  abx500_chargalg_state_to(di, 133);


 case 133:
  if (!di->events.btemp_underover)
   abx500_chargalg_state_to(di, 142);
  break;
 }


 if (di->charge_state == 142 ||
   di->charge_state == 146 ||
   di->charge_state == 144)
  queue_work(di->chargalg_wq, &di->chargalg_work);
}
