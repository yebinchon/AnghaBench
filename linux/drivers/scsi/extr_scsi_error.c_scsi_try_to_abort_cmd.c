
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int (* eh_abort_handler ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {int dummy; } ;


 int FAILED ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_to_abort_cmd(struct scsi_host_template *hostt,
     struct scsi_cmnd *scmd)
{
 if (!hostt->eh_abort_handler)
  return FAILED;

 return hostt->eh_abort_handler(scmd);
}
