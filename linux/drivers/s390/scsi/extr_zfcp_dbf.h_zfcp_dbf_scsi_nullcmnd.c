
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 int _zfcp_dbf_scsi (char*,int,struct scsi_cmnd*,struct zfcp_fsf_req*) ;

__attribute__((used)) static inline void zfcp_dbf_scsi_nullcmnd(struct scsi_cmnd *scmnd,
       struct zfcp_fsf_req *fsf_req)
{
 _zfcp_dbf_scsi("scfc__1", 3, scmnd, fsf_req);
}
