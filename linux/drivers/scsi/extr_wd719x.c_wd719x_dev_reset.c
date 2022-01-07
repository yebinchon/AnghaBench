
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;


 int WD719X_CMD_RESET ;
 int wd719x_reset (struct scsi_cmnd*,int ,int ) ;

__attribute__((used)) static int wd719x_dev_reset(struct scsi_cmnd *cmd)
{
 return wd719x_reset(cmd, WD719X_CMD_RESET, cmd->device->id);
}
