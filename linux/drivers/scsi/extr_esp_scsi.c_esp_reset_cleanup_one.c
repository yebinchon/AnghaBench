
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct esp_cmd_entry {int flags; int list; struct scsi_cmnd* cmd; } ;
struct esp {int dummy; } ;
struct TYPE_2__ {int hostdata; } ;


 int DID_RESET ;
 int ESP_CMD_FLAG_AUTOSENSE ;
 int esp_free_lun_tag (struct esp_cmd_entry*,int ) ;
 int esp_put_ent (struct esp*,struct esp_cmd_entry*) ;
 int esp_unmap_dma (struct esp*,struct scsi_cmnd*) ;
 int esp_unmap_sense (struct esp*,struct esp_cmd_entry*) ;
 int list_del (int *) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void esp_reset_cleanup_one(struct esp *esp, struct esp_cmd_entry *ent)
{
 struct scsi_cmnd *cmd = ent->cmd;

 esp_unmap_dma(esp, cmd);
 esp_free_lun_tag(ent, cmd->device->hostdata);
 cmd->result = DID_RESET << 16;

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE)
  esp_unmap_sense(esp, ent);

 cmd->scsi_done(cmd);
 list_del(&ent->list);
 esp_put_ent(esp, ent);
}
