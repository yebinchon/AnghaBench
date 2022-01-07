
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_hw_data {int vport_slock; int loop_id_map; } ;
struct TYPE_3__ {int vp_idx; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int FC_NO_LOOP_ID ;
 int NPH_MGMT_SERVER ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int,int ) ;

int
qla2x00_reserve_mgmt_server_loop_id(scsi_qla_host_t *vha)
{
 int loop_id = FC_NO_LOOP_ID;
 int lid = NPH_MGMT_SERVER - vha->vp_idx;
 unsigned long flags;
 struct qla_hw_data *ha = vha->hw;

 if (vha->vp_idx == 0) {
  set_bit(NPH_MGMT_SERVER, ha->loop_id_map);
  return NPH_MGMT_SERVER;
 }


 spin_lock_irqsave(&ha->vport_slock, flags);
 for (; lid > 0; lid--) {
  if (!test_bit(lid, vha->hw->loop_id_map)) {
   set_bit(lid, vha->hw->loop_id_map);
   loop_id = lid;
   break;
  }
 }
 spin_unlock_irqrestore(&ha->vport_slock, flags);

 return loop_id;
}
