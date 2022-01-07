
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {int dummy; } ;
struct scsi_cmnd {scalar_t__ result; scalar_t__ retries; } ;


 int _zfcp_dbf_scsi (char*,int,struct scsi_cmnd*,struct zfcp_fsf_req*) ;

__attribute__((used)) static inline
void zfcp_dbf_scsi_result(struct scsi_cmnd *scmd, struct zfcp_fsf_req *req)
{
 if (scmd->result != 0)
  _zfcp_dbf_scsi("rsl_err", 3, scmd, req);
 else if (scmd->retries > 0)
  _zfcp_dbf_scsi("rsl_ret", 4, scmd, req);
 else
  _zfcp_dbf_scsi("rsl_nor", 6, scmd, req);
}
