
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int tot_ddbs; struct ddb_entry** fw_ddb_index_map; } ;
struct ddb_entry {size_t fw_ddb_index; } ;


 scalar_t__ INVALID_ENTRY ;

void qla4xxx_free_ddb(struct scsi_qla_host *ha,
    struct ddb_entry *ddb_entry)
{

 ha->fw_ddb_index_map[ddb_entry->fw_ddb_index] =
  (struct ddb_entry *) INVALID_ENTRY;
 ha->tot_ddbs--;
}
