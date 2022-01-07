
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 int set_host_byte (struct scsi_cmnd*,int) ;
 int stub1 (struct scsi_cmnd*) ;
 int zfcp_dbf_scsi_fail_send (struct scsi_cmnd*) ;

__attribute__((used)) static void zfcp_scsi_command_fail(struct scsi_cmnd *scpnt, int result)
{
 set_host_byte(scpnt, result);
 zfcp_dbf_scsi_fail_send(scpnt);
 scpnt->scsi_done(scpnt);
}
