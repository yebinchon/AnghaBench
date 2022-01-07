
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_session {scalar_t__ se_node_acl; scalar_t__ sess_bin_isid; } ;
struct se_device {int dev_reservation_flags; scalar_t__ dev_res_bin_isid; TYPE_1__* reservation_holder; } ;
struct se_cmd {int* t_task_cdb; struct se_session* se_sess; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_2__ {scalar_t__ se_node_acl; } ;


 int DRF_SPC2_RESERVATIONS_WITH_ISID ;



 int TCM_RESERVATION_CONFLICT ;

__attribute__((used)) static sense_reason_t
target_scsi2_reservation_check(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 struct se_session *sess = cmd->se_sess;

 switch (cmd->t_task_cdb[0]) {
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  break;
 }

 if (!dev->reservation_holder || !sess)
  return 0;

 if (dev->reservation_holder->se_node_acl != sess->se_node_acl)
  return TCM_RESERVATION_CONFLICT;

 if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS_WITH_ISID) {
  if (dev->dev_res_bin_isid != sess->sess_bin_isid)
   return TCM_RESERVATION_CONFLICT;
 }

 return 0;
}
