
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct qla_hw_data {scalar_t__ max_npiv_vports; int vport_lock; int hardware_lock; int vport_slock; int vp_list; int num_vhosts; int vp_idx_map; } ;
struct TYPE_5__ {int list; scalar_t__ vp_idx; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int SET_VP_IDX ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_dbg (int ,TYPE_1__*,int,char*,scalar_t__,scalar_t__) ;
 int ql_dbg_vport ;
 int qlt_update_vp_map (TYPE_1__*,int ) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static uint32_t
qla24xx_allocate_vp_id(scsi_qla_host_t *vha)
{
 uint32_t vp_id;
 struct qla_hw_data *ha = vha->hw;
 unsigned long flags;


 mutex_lock(&ha->vport_lock);
 vp_id = find_first_zero_bit(ha->vp_idx_map, ha->max_npiv_vports + 1);
 if (vp_id > ha->max_npiv_vports) {
  ql_dbg(ql_dbg_vport, vha, 0xa000,
      "vp_id %d is bigger than max-supported %d.\n",
      vp_id, ha->max_npiv_vports);
  mutex_unlock(&ha->vport_lock);
  return vp_id;
 }

 set_bit(vp_id, ha->vp_idx_map);
 ha->num_vhosts++;
 vha->vp_idx = vp_id;

 spin_lock_irqsave(&ha->vport_slock, flags);
 list_add_tail(&vha->list, &ha->vp_list);
 spin_unlock_irqrestore(&ha->vport_slock, flags);

 spin_lock_irqsave(&ha->hardware_lock, flags);
 qlt_update_vp_map(vha, SET_VP_IDX);
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 mutex_unlock(&ha->vport_lock);
 return vp_id;
}
