
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_state; int tg_pt_gp_nonop_delay_msecs; } ;
struct se_lun {int lun_tg_pt_gp_lock; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; int lun_tg_pt_secondary_offline; } ;
struct se_device {TYPE_2__* transport; TYPE_1__* se_hba; } ;
struct se_cmd {unsigned char* t_task_cdb; struct se_lun* se_lun; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_4__ {int transport_flags; } ;
struct TYPE_3__ {int hba_flags; } ;



 int ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED ;





 int ASCQ_04H_ALUA_OFFLINE ;
 int HBA_FLAGS_INTERNAL_USE ;
 int TCM_CHECK_CONDITION_NOT_READY ;
 int TCM_INVALID_CDB_FIELD ;
 int TRANSPORT_FLAG_PASSTHROUGH_ALUA ;
 scalar_t__ atomic_read (int *) ;
 int core_alua_state_lba_dependent (struct se_cmd*,struct t10_alua_tg_pt_gp*) ;
 int core_alua_state_nonoptimized (struct se_cmd*,unsigned char*,int) ;
 int core_alua_state_standby (struct se_cmd*,unsigned char*) ;
 int core_alua_state_transition (struct se_cmd*,unsigned char*) ;
 int core_alua_state_unavailable (struct se_cmd*,unsigned char*) ;
 int pr_debug (char*) ;
 int pr_err (char*,int) ;
 int set_ascq (struct se_cmd*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

sense_reason_t
target_alua_state_check(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 unsigned char *cdb = cmd->t_task_cdb;
 struct se_lun *lun = cmd->se_lun;
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 int out_alua_state, nonop_delay_msecs;

 if (dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE)
  return 0;
 if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH_ALUA)
  return 0;





 if (atomic_read(&lun->lun_tg_pt_secondary_offline)) {
  pr_debug("ALUA: Got secondary offline status for local"
    " target port\n");
  set_ascq(cmd, ASCQ_04H_ALUA_OFFLINE);
  return TCM_CHECK_CONDITION_NOT_READY;
 }

 if (!lun->lun_tg_pt_gp)
  return 0;

 spin_lock(&lun->lun_tg_pt_gp_lock);
 tg_pt_gp = lun->lun_tg_pt_gp;
 out_alua_state = tg_pt_gp->tg_pt_gp_alua_access_state;
 nonop_delay_msecs = tg_pt_gp->tg_pt_gp_nonop_delay_msecs;


 spin_unlock(&lun->lun_tg_pt_gp_lock);






 if (out_alua_state == ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED)
  return 0;

 switch (out_alua_state) {
 case 133:
  core_alua_state_nonoptimized(cmd, cdb, nonop_delay_msecs);
  break;
 case 130:
  if (core_alua_state_standby(cmd, cdb))
   return TCM_CHECK_CONDITION_NOT_READY;
  break;
 case 128:
  if (core_alua_state_unavailable(cmd, cdb))
   return TCM_CHECK_CONDITION_NOT_READY;
  break;
 case 129:
  if (core_alua_state_transition(cmd, cdb))
   return TCM_CHECK_CONDITION_NOT_READY;
  break;
 case 132:
  if (core_alua_state_lba_dependent(cmd, tg_pt_gp))
   return TCM_CHECK_CONDITION_NOT_READY;
  break;




 case 131:
 default:
  pr_err("Unknown ALUA access state: 0x%02x\n",
    out_alua_state);
  return TCM_INVALID_CDB_FIELD;
 }

 return 0;
}
