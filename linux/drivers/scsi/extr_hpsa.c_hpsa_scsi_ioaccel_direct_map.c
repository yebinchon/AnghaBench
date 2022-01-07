
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; int cmnd; TYPE_1__* device; } ;
struct hpsa_scsi_dev_t {int scsi3addr; int ioaccel_handle; scalar_t__ in_reset; } ;
struct ctlr_info {int dummy; } ;
struct CommandList {struct hpsa_scsi_dev_t* phys_disk; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_2__ {struct hpsa_scsi_dev_t* hostdata; } ;


 int hpsa_scsi_ioaccel_queue_command (struct ctlr_info*,struct CommandList*,int ,int ,int ,int ,struct hpsa_scsi_dev_t*) ;

__attribute__((used)) static int hpsa_scsi_ioaccel_direct_map(struct ctlr_info *h,
 struct CommandList *c)
{
 struct scsi_cmnd *cmd = c->scsi_cmd;
 struct hpsa_scsi_dev_t *dev = cmd->device->hostdata;

 if (!dev)
  return -1;

 c->phys_disk = dev;

 if (dev->in_reset)
  return -1;

 return hpsa_scsi_ioaccel_queue_command(h, c, dev->ioaccel_handle,
  cmd->cmnd, cmd->cmd_len, dev->scsi3addr, dev);
}
