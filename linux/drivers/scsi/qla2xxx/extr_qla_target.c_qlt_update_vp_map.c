
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int b24; } ;
struct scsi_qla_host {size_t vp_idx; TYPE_4__ d_id; TYPE_3__* hw; } ;
struct TYPE_6__ {int host_map; TYPE_1__* tgt_vp_map; } ;
struct TYPE_7__ {TYPE_2__ tgt; } ;
struct TYPE_5__ {struct scsi_qla_host* vha; } ;


 int GFP_ATOMIC ;
 int QLA_TGT_MODE_ENABLED () ;




 int btree_insert32 (int *,int ,struct scsi_qla_host*,int ) ;
 void* btree_lookup32 (int *,int ) ;
 int btree_remove32 (int *,int ) ;
 int btree_update32 (int *,int ,struct scsi_qla_host*) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,struct scsi_qla_host*,int ) ;
 int ql_dbg_tgt_mgt ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int ) ;
 int ql_log_info ;

void
qlt_update_vp_map(struct scsi_qla_host *vha, int cmd)
{
 void *slot;
 u32 key;
 int rc;

 if (!QLA_TGT_MODE_ENABLED())
  return;

 key = vha->d_id.b24;

 switch (cmd) {
 case 128:
  vha->hw->tgt.tgt_vp_map[vha->vp_idx].vha = vha;
  break;
 case 129:
  slot = btree_lookup32(&vha->hw->tgt.host_map, key);
  if (!slot) {
   ql_dbg(ql_dbg_tgt_mgt, vha, 0xf018,
       "Save vha in host_map %p %06x\n", vha, key);
   rc = btree_insert32(&vha->hw->tgt.host_map,
    key, vha, GFP_ATOMIC);
   if (rc)
    ql_log(ql_log_info, vha, 0xd03e,
        "Unable to insert s_id into host_map: %06x\n",
        key);
   return;
  }
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf019,
      "replace existing vha in host_map %p %06x\n", vha, key);
  btree_update32(&vha->hw->tgt.host_map, key, vha);
  break;
 case 130:
  vha->hw->tgt.tgt_vp_map[vha->vp_idx].vha = ((void*)0);
  break;
 case 131:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf01a,
     "clear vha in host_map %p %06x\n", vha, key);
  slot = btree_lookup32(&vha->hw->tgt.host_map, key);
  if (slot)
   btree_remove32(&vha->hw->tgt.host_map, key);
  vha->d_id.b24 = 0;
  break;
 }
}
