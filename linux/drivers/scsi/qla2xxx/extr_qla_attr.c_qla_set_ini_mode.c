
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int online; } ;
struct TYPE_13__ {int qlini_mode; scalar_t__ u_ql2xexchoffld; scalar_t__ ql2xexchoffld; scalar_t__ u_ql2xiniexchg; scalar_t__ ql2xiniexchg; int dpc_flags; TYPE_1__ flags; TYPE_3__* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_11__ {int exchoffld_enabled; int fw_started; } ;
struct TYPE_12__ {TYPE_2__ flags; } ;


 int ISP_ABORT_NEEDED ;
 int NEED_EXCH_OFFLOAD (scalar_t__) ;




 int * mode_to_str ;
 int ql_log (int ,TYPE_4__*,int,char*,...) ;
 int ql_log_warn ;
 int qla_dual_mode_enabled (TYPE_4__*) ;
 int qla_tgt_mode_enabled (TYPE_4__*) ;
 int qlt_set_mode (TYPE_4__*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qla_set_ini_mode(scsi_qla_host_t *vha, int op)
{
 int rc = 0;
 enum {
  NO_ACTION,
  MODE_CHANGE_ACCEPT,
  MODE_CHANGE_NO_ACTION,
  TARGET_STILL_ACTIVE,
 };
 int action = NO_ACTION;
 int set_mode = 0;
 u8 eo_toggle = 0;

 switch (vha->qlini_mode) {
 case 131:
  switch (op) {
  case 131:
   if (qla_tgt_mode_enabled(vha)) {
    if (NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld) !=
        vha->hw->flags.exchoffld_enabled)
     eo_toggle = 1;
    if (((vha->ql2xexchoffld !=
        vha->u_ql2xexchoffld) &&
        NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld)) ||
        eo_toggle) {





     action = MODE_CHANGE_ACCEPT;
    } else {
     action = MODE_CHANGE_NO_ACTION;
    }
   } else {
    action = MODE_CHANGE_NO_ACTION;
   }
   break;
  case 128:
   if (qla_tgt_mode_enabled(vha)) {
    if (NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld) !=
        vha->hw->flags.exchoffld_enabled)
     eo_toggle = 1;
    if (((vha->ql2xexchoffld !=
        vha->u_ql2xexchoffld) &&
        NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld)) ||
        eo_toggle) {





     action = MODE_CHANGE_ACCEPT;
    } else {
     action = MODE_CHANGE_NO_ACTION;
    }
   } else {
    action = MODE_CHANGE_ACCEPT;
   }
   break;
  case 130:
   action = MODE_CHANGE_ACCEPT;

   if (qla_tgt_mode_enabled(vha)) {
    set_mode = 1;
    action = MODE_CHANGE_ACCEPT;
   } else {
    action = MODE_CHANGE_NO_ACTION;
   }
   break;

  case 129:
   if (qla_tgt_mode_enabled(vha))
    action = TARGET_STILL_ACTIVE;
   else {
    action = MODE_CHANGE_ACCEPT;
    set_mode = 1;
   }
   break;
  }
  break;

 case 128:
  switch (op) {
  case 128:
   if (qla_tgt_mode_enabled(vha)) {
    if (NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld) !=
        vha->hw->flags.exchoffld_enabled)
     eo_toggle = 1;
    if (((vha->ql2xexchoffld !=
        vha->u_ql2xexchoffld) &&
        NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld)) ||
        eo_toggle)





     action = MODE_CHANGE_ACCEPT;
    else
     action = NO_ACTION;
   } else
    action = NO_ACTION;

   break;

  case 131:
   if (qla_tgt_mode_enabled(vha)) {
    if (NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld) !=
        vha->hw->flags.exchoffld_enabled)
     eo_toggle = 1;
    if (((vha->ql2xexchoffld !=
          vha->u_ql2xexchoffld) &&
        NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld)) ||
        eo_toggle)
     action = MODE_CHANGE_ACCEPT;
    else
     action = MODE_CHANGE_NO_ACTION;
   } else
    action = MODE_CHANGE_NO_ACTION;
   break;

  case 130:
   if (qla_tgt_mode_enabled(vha)) {
    action = MODE_CHANGE_ACCEPT;
    set_mode = 1;
   } else
    action = MODE_CHANGE_ACCEPT;
   break;

  case 129:
   if (qla_tgt_mode_enabled(vha))
    action = TARGET_STILL_ACTIVE;
   else {
    if (vha->hw->flags.fw_started)
     action = MODE_CHANGE_NO_ACTION;
    else
     action = MODE_CHANGE_ACCEPT;
   }
   break;
  }
  break;

 case 129:
  switch (op) {
  case 129:
   if (NEED_EXCH_OFFLOAD(vha->u_ql2xiniexchg) !=
       vha->hw->flags.exchoffld_enabled)
    eo_toggle = 1;
   if (((vha->ql2xiniexchg != vha->u_ql2xiniexchg) &&
    NEED_EXCH_OFFLOAD(vha->u_ql2xiniexchg)) ||
       eo_toggle)
    action = MODE_CHANGE_ACCEPT;
   else
    action = NO_ACTION;
   break;
  case 130:
  case 131:
   action = MODE_CHANGE_ACCEPT;
   break;
  default:
   action = MODE_CHANGE_NO_ACTION;
   break;
  }
  break;

 case 130:
  switch (op) {
  case 130:
   if (qla_tgt_mode_enabled(vha) ||
       qla_dual_mode_enabled(vha)) {
    if (NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld +
     vha->u_ql2xiniexchg) !=
        vha->hw->flags.exchoffld_enabled)
     eo_toggle = 1;

    if ((((vha->ql2xexchoffld +
           vha->ql2xiniexchg) !=
        (vha->u_ql2xiniexchg +
         vha->u_ql2xexchoffld)) &&
        NEED_EXCH_OFFLOAD(vha->u_ql2xiniexchg +
     vha->u_ql2xexchoffld)) || eo_toggle)
     action = MODE_CHANGE_ACCEPT;
    else
     action = NO_ACTION;
   } else {
    if (NEED_EXCH_OFFLOAD(vha->u_ql2xexchoffld +
     vha->u_ql2xiniexchg) !=
        vha->hw->flags.exchoffld_enabled)
     eo_toggle = 1;

    if ((((vha->ql2xexchoffld + vha->ql2xiniexchg)
        != (vha->u_ql2xiniexchg +
     vha->u_ql2xexchoffld)) &&
        NEED_EXCH_OFFLOAD(vha->u_ql2xiniexchg +
     vha->u_ql2xexchoffld)) || eo_toggle)
     action = MODE_CHANGE_NO_ACTION;
    else
     action = NO_ACTION;
   }
   break;

  case 131:
   if (qla_tgt_mode_enabled(vha) ||
       qla_dual_mode_enabled(vha)) {

    set_mode = 1;
    action = MODE_CHANGE_ACCEPT;
   } else {
    action = MODE_CHANGE_NO_ACTION;
   }
   break;

  case 128:
   if (qla_tgt_mode_enabled(vha) ||
       qla_dual_mode_enabled(vha)) {
    set_mode = 1;
    action = MODE_CHANGE_ACCEPT;
   } else {
    action = MODE_CHANGE_ACCEPT;
   }
   break;

  case 129:
   if (qla_tgt_mode_enabled(vha) ||
       qla_dual_mode_enabled(vha)) {
    action = TARGET_STILL_ACTIVE;
   } else {
    action = MODE_CHANGE_ACCEPT;
   }
  }
  break;
 }

 switch (action) {
 case MODE_CHANGE_ACCEPT:
  ql_log(ql_log_warn, vha, 0xffff,
      "Mode change accepted. From %s to %s, Tgt exchg %d|%d. ini exchg %d|%d\n",
      mode_to_str[vha->qlini_mode], mode_to_str[op],
      vha->ql2xexchoffld, vha->u_ql2xexchoffld,
      vha->ql2xiniexchg, vha->u_ql2xiniexchg);

  vha->qlini_mode = op;
  vha->ql2xexchoffld = vha->u_ql2xexchoffld;
  vha->ql2xiniexchg = vha->u_ql2xiniexchg;
  if (set_mode)
   qlt_set_mode(vha);
  vha->flags.online = 1;
  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  break;

 case MODE_CHANGE_NO_ACTION:
  ql_log(ql_log_warn, vha, 0xffff,
      "Mode is set. No action taken. From %s to %s, Tgt exchg %d|%d. ini exchg %d|%d\n",
      mode_to_str[vha->qlini_mode], mode_to_str[op],
      vha->ql2xexchoffld, vha->u_ql2xexchoffld,
      vha->ql2xiniexchg, vha->u_ql2xiniexchg);
  vha->qlini_mode = op;
  vha->ql2xexchoffld = vha->u_ql2xexchoffld;
  vha->ql2xiniexchg = vha->u_ql2xiniexchg;
  break;

 case TARGET_STILL_ACTIVE:
  ql_log(ql_log_warn, vha, 0xffff,
      "Target Mode is active. Unable to change Mode.\n");
  break;

 case NO_ACTION:
 default:
  ql_log(ql_log_warn, vha, 0xffff,
      "Mode unchange. No action taken. %d|%d pct %d|%d.\n",
      vha->qlini_mode, op,
      vha->ql2xexchoffld, vha->u_ql2xexchoffld);
  break;
 }

 return rc;
}
