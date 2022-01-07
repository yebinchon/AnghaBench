
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dfs_tgt_port_database; int * dfs_tgt_sess; int * dfs_naqp; } ;
struct qla_hw_data {int * dfs_dir; int * dfs_fce; int * dfs_tgt_counters; int * dfs_fw_resource_cnt; TYPE_1__ tgt; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int debugfs_remove (int *) ;
 int * qla2x00_dfs_root ;
 int qla2x00_dfs_root_count ;

int
qla2x00_dfs_remove(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (ha->tgt.dfs_naqp) {
  debugfs_remove(ha->tgt.dfs_naqp);
  ha->tgt.dfs_naqp = ((void*)0);
 }

 if (ha->tgt.dfs_tgt_sess) {
  debugfs_remove(ha->tgt.dfs_tgt_sess);
  ha->tgt.dfs_tgt_sess = ((void*)0);
 }

 if (ha->tgt.dfs_tgt_port_database) {
  debugfs_remove(ha->tgt.dfs_tgt_port_database);
  ha->tgt.dfs_tgt_port_database = ((void*)0);
 }

 if (ha->dfs_fw_resource_cnt) {
  debugfs_remove(ha->dfs_fw_resource_cnt);
  ha->dfs_fw_resource_cnt = ((void*)0);
 }

 if (ha->dfs_tgt_counters) {
  debugfs_remove(ha->dfs_tgt_counters);
  ha->dfs_tgt_counters = ((void*)0);
 }

 if (ha->dfs_fce) {
  debugfs_remove(ha->dfs_fce);
  ha->dfs_fce = ((void*)0);
 }

 if (ha->dfs_dir) {
  debugfs_remove(ha->dfs_dir);
  ha->dfs_dir = ((void*)0);
  atomic_dec(&qla2x00_dfs_root_count);
 }

 if (atomic_read(&qla2x00_dfs_root_count) == 0 &&
     qla2x00_dfs_root) {
  debugfs_remove(qla2x00_dfs_root);
  qla2x00_dfs_root = ((void*)0);
 }

 return 0;
}
