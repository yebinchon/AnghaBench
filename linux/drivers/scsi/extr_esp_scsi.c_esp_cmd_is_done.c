
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int id; int lun; int hostdata; } ;
struct scsi_cmnd {unsigned int result; int (* scsi_done ) (struct scsi_cmnd*) ;int * sense_buffer; struct scsi_device* device; } ;
struct esp_cmd_entry {int flags; int list; int * eh_done; } ;
struct esp {TYPE_1__* host; int * active_cmd; } ;
struct TYPE_2__ {int unique_id; } ;


 int COMMAND_COMPLETE ;
 int DID_OK ;
 int DRIVER_SENSE ;
 int ESP_CMD_FLAG_AUTOSENSE ;
 int ESP_DEBUG_AUTOSENSE ;
 int SAM_STAT_CHECK_CONDITION ;
 int complete (int *) ;
 int esp_debug ;
 int esp_free_lun_tag (struct esp_cmd_entry*,int ) ;
 int esp_maybe_execute_command (struct esp*) ;
 int esp_put_ent (struct esp*,struct esp_cmd_entry*) ;
 int esp_unmap_dma (struct esp*,struct scsi_cmnd*) ;
 int esp_unmap_sense (struct esp*,struct esp_cmd_entry*) ;
 int list_del (int *) ;
 int printk (char*,...) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void esp_cmd_is_done(struct esp *esp, struct esp_cmd_entry *ent,
       struct scsi_cmnd *cmd, unsigned int result)
{
 struct scsi_device *dev = cmd->device;
 int tgt = dev->id;
 int lun = dev->lun;

 esp->active_cmd = ((void*)0);
 esp_unmap_dma(esp, cmd);
 esp_free_lun_tag(ent, dev->hostdata);
 cmd->result = result;

 if (ent->eh_done) {
  complete(ent->eh_done);
  ent->eh_done = ((void*)0);
 }

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
  esp_unmap_sense(esp, ent);





  cmd->result = ((DRIVER_SENSE << 24) |
          (DID_OK << 16) |
          (COMMAND_COMPLETE << 8) |
          (SAM_STAT_CHECK_CONDITION << 0));

  ent->flags &= ~ESP_CMD_FLAG_AUTOSENSE;
  if (esp_debug & ESP_DEBUG_AUTOSENSE) {
   int i;

   printk("esp%d: tgt[%d] lun[%d] AUTO SENSE[ ",
          esp->host->unique_id, tgt, lun);
   for (i = 0; i < 18; i++)
    printk("%02x ", cmd->sense_buffer[i]);
   printk("]\n");
  }
 }

 cmd->scsi_done(cmd);

 list_del(&ent->list);
 esp_put_ent(esp, ent);

 esp_maybe_execute_command(esp);
}
