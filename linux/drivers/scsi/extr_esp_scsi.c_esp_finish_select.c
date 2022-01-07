
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {size_t id; int hostdata; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct esp_target_data {int flags; } ;
struct esp_cmd_entry {int flags; int list; struct scsi_cmnd* cmd; } ;
struct esp {int seqreg; int ireg; scalar_t__ rev; int sreg; int host; int prev_soff; struct esp_target_data* target; struct esp_cmd_entry* active_cmd; int queued_cmds; scalar_t__ cmd_bytes_left; int * cmd_bytes_ptr; TYPE_1__* ops; int select_state; } ;
struct TYPE_2__ {int (* dma_invalidate ) (struct esp*) ;scalar_t__ (* dma_error ) (struct esp*) ;} ;


 int DID_BAD_TARGET ;
 int DID_ERROR ;
 scalar_t__ ESP236 ;
 int ESP_CMD_ESEL ;
 int ESP_CMD_FLAG_AUTOSENSE ;
 int ESP_CMD_NULL ;
 int ESP_DIP ;
 int ESP_EVENT_CHECK_PHASE ;
 int ESP_FFLAGS ;
 int ESP_FF_FBYTES ;
 int ESP_INTR_BSERV ;
 int ESP_INTR_DC ;
 int ESP_INTR_FDONE ;
 int ESP_INTR_RSEL ;
 int ESP_SELECT_NONE ;
 int ESP_SSTEP ;
 int ESP_STAT_PMASK ;
 int ESP_STEP_VBITS ;
 int ESP_TGT_CHECK_NEGO ;
 int ESP_TGT_NEGO_SYNC ;
 int ESP_TGT_NEGO_WIDE ;
 int KERN_INFO ;
 int esp_cmd_is_done (struct esp*,struct esp_cmd_entry*,struct scsi_cmnd*,int) ;
 int esp_event (struct esp*,int ) ;
 int esp_flush_fifo (struct esp*) ;
 int esp_free_lun_tag (struct esp_cmd_entry*,int ) ;
 int esp_read8 (int ) ;
 int esp_schedule_reset (struct esp*) ;
 int esp_unmap_dma (struct esp*,struct scsi_cmnd*) ;
 int esp_unmap_sense (struct esp*,struct esp_cmd_entry*) ;
 int list_move (int *,int *) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 int shost_printk (int ,int ,char*,int) ;
 scalar_t__ stub1 (struct esp*) ;
 int stub2 (struct esp*) ;

__attribute__((used)) static int esp_finish_select(struct esp *esp)
{
 struct esp_cmd_entry *ent;
 struct scsi_cmnd *cmd;


 esp->select_state = ESP_SELECT_NONE;

 esp->seqreg = esp_read8(ESP_SSTEP) & ESP_STEP_VBITS;
 ent = esp->active_cmd;
 cmd = ent->cmd;

 if (esp->ops->dma_error(esp)) {



  esp_schedule_reset(esp);
  esp_cmd_is_done(esp, ent, cmd, (DID_ERROR << 16));
  return 0;
 }

 esp->ops->dma_invalidate(esp);

 if (esp->ireg == (ESP_INTR_RSEL | ESP_INTR_FDONE)) {
  struct esp_target_data *tp = &esp->target[cmd->device->id];





  if (!(ent->flags & ESP_CMD_FLAG_AUTOSENSE)) {
   esp_unmap_dma(esp, cmd);
   esp_free_lun_tag(ent, cmd->device->hostdata);
   tp->flags &= ~(ESP_TGT_NEGO_SYNC | ESP_TGT_NEGO_WIDE);
   esp->cmd_bytes_ptr = ((void*)0);
   esp->cmd_bytes_left = 0;
  } else {
   esp_unmap_sense(esp, ent);
  }




  list_move(&ent->list, &esp->queued_cmds);
  esp->active_cmd = ((void*)0);




  return 0;
 }

 if (esp->ireg == ESP_INTR_DC) {
  struct scsi_device *dev = cmd->device;





  esp->target[dev->id].flags |= ESP_TGT_CHECK_NEGO;

  scsi_esp_cmd(esp, ESP_CMD_ESEL);
  esp_cmd_is_done(esp, ent, cmd, (DID_BAD_TARGET << 16));
  return 1;
 }

 if (esp->ireg == (ESP_INTR_FDONE | ESP_INTR_BSERV)) {



  if (esp->rev <= ESP236) {
   int fcnt = esp_read8(ESP_FFLAGS) & ESP_FF_FBYTES;

   scsi_esp_cmd(esp, ESP_CMD_NULL);

   if (!fcnt &&
       (!esp->prev_soff ||
        ((esp->sreg & ESP_STAT_PMASK) != ESP_DIP)))
    esp_flush_fifo(esp);
  }




  esp_event(esp, ESP_EVENT_CHECK_PHASE);
  return 0;
 }

 shost_printk(KERN_INFO, esp->host,
       "Unexpected selection completion ireg[%x]\n", esp->ireg);
 esp_schedule_reset(esp);
 return 0;
}
