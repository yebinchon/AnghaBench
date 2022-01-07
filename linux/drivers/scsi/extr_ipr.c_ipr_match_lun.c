
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_cmnd {TYPE_1__* scsi_cmd; } ;
struct TYPE_2__ {void* device; } ;



__attribute__((used)) static int ipr_match_lun(struct ipr_cmnd *ipr_cmd, void *device)
{
 if (ipr_cmd->scsi_cmd && ipr_cmd->scsi_cmd->device == device)
  return 1;
 return 0;
}
