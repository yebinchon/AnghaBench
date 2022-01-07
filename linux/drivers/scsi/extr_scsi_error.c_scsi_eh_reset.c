
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_driver {int (* eh_reset ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {int request; } ;


 int blk_rq_is_passthrough (int ) ;
 struct scsi_driver* scsi_cmd_to_driver (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_eh_reset(struct scsi_cmnd *scmd)
{
 if (!blk_rq_is_passthrough(scmd->request)) {
  struct scsi_driver *sdrv = scsi_cmd_to_driver(scmd);
  if (sdrv->eh_reset)
   sdrv->eh_reset(scmd);
 }
}
