
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_driver {int (* uninit_command ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {int request; } ;


 int blk_rq_is_passthrough (int ) ;
 struct scsi_driver* scsi_cmd_to_driver (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_uninit_cmd(struct scsi_cmnd *cmd)
{
 if (!blk_rq_is_passthrough(cmd->request)) {
  struct scsi_driver *drv = scsi_cmd_to_driver(cmd);

  if (drv->uninit_command)
   drv->uninit_command(cmd);
 }
}
