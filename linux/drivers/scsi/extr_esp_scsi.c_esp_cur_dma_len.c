
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {unsigned int sense_buffer; } ;
struct esp_cmd_priv {unsigned int cur_residue; } ;
struct esp_cmd_entry {int flags; unsigned int sense_ptr; } ;


 int ESP_CMD_FLAG_AUTOSENSE ;
 struct esp_cmd_priv* ESP_CMD_PRIV (struct scsi_cmnd*) ;
 unsigned int SCSI_SENSE_BUFFERSIZE ;

__attribute__((used)) static unsigned int esp_cur_dma_len(struct esp_cmd_entry *ent,
        struct scsi_cmnd *cmd)
{
 struct esp_cmd_priv *p = ESP_CMD_PRIV(cmd);

 if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
  return SCSI_SENSE_BUFFERSIZE -
   (ent->sense_ptr - cmd->sense_buffer);
 }
 return p->cur_residue;
}
