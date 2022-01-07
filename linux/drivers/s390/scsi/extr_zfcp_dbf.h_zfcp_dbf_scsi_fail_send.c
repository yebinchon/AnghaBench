
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int _zfcp_dbf_scsi (char*,int,struct scsi_cmnd*,int *) ;

__attribute__((used)) static inline
void zfcp_dbf_scsi_fail_send(struct scsi_cmnd *scmd)
{
 _zfcp_dbf_scsi("rsl_fai", 4, scmd, ((void*)0));
}
