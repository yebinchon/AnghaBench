
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int ql_log (int ,struct scsi_qla_host*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla8044_flash_lock (struct scsi_qla_host*) ;
 int qla8044_flash_unlock (struct scsi_qla_host*) ;

__attribute__((used)) static
void qla8044_flash_lock_recovery(struct scsi_qla_host *vha)
{

 if (qla8044_flash_lock(vha)) {

  ql_log(ql_log_warn, vha, 0xb120, "Resetting flash_lock\n");
 }






 qla8044_flash_unlock(vha);
}
