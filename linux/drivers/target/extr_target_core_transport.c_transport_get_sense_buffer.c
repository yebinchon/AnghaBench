
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_device {TYPE_2__* transport; TYPE_1__* se_hba; } ;
struct se_cmd {int se_cmd_flags; unsigned char* sense_buffer; int scsi_status; int scsi_sense_length; int se_lun; struct se_device* se_dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int hba_id; } ;


 int SCF_SENT_CHECK_CONDITION ;
 int TRANSPORT_SENSE_BUFFER ;
 int WARN_ON (int) ;
 int pr_debug (char*,int ,int ,int ) ;

__attribute__((used)) static unsigned char *transport_get_sense_buffer(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;

 WARN_ON(!cmd->se_lun);

 if (!dev)
  return ((void*)0);

 if (cmd->se_cmd_flags & SCF_SENT_CHECK_CONDITION)
  return ((void*)0);

 cmd->scsi_sense_length = TRANSPORT_SENSE_BUFFER;

 pr_debug("HBA_[%u]_PLUG[%s]: Requesting sense for SAM STATUS: 0x%02x\n",
  dev->se_hba->hba_id, dev->transport->name, cmd->scsi_status);
 return cmd->sense_buffer;
}
