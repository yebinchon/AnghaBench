
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int dummy; } ;
struct ddb_entry {scalar_t__ ddb_type; int sess; TYPE_1__* conn; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int ep; } ;


 scalar_t__ FLASH_DDB ;
 int MAX_DDB_ENTRIES ;
 int iscsi_destroy_endpoint (int ) ;
 int iscsi_session_teardown (int ) ;
 int qla4xxx_destroy_ddb (struct scsi_qla_host*,struct ddb_entry*) ;
 int qla4xxx_free_ddb (struct scsi_qla_host*,struct ddb_entry*) ;
 TYPE_2__ qla4xxx_iscsi_transport ;
 struct ddb_entry* qla4xxx_lookup_ddb_by_fw_index (struct scsi_qla_host*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static void qla4xxx_destroy_fw_ddb_session(struct scsi_qla_host *ha)
{
 struct ddb_entry *ddb_entry;
 int idx;

 for (idx = 0; idx < MAX_DDB_ENTRIES; idx++) {

  ddb_entry = qla4xxx_lookup_ddb_by_fw_index(ha, idx);
  if ((ddb_entry != ((void*)0)) &&
      (ddb_entry->ddb_type == FLASH_DDB)) {

   qla4xxx_destroy_ddb(ha, ddb_entry);






   try_module_get(qla4xxx_iscsi_transport.owner);
   iscsi_destroy_endpoint(ddb_entry->conn->ep);
   qla4xxx_free_ddb(ha, ddb_entry);
   iscsi_session_teardown(ddb_entry->sess);
  }
 }
}
