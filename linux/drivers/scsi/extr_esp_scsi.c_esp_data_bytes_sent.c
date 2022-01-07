
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct scsi_cmnd {int dummy; } ;
struct esp_cmd_priv {int num_sg; int cur_sg; } ;
struct esp_cmd_entry {int flags; int* sense_ptr; } ;
struct esp {int prev_cfg3; int sreg; scalar_t__ rev; int config2; int data_dma_len; int prev_soff; scalar_t__ send_cmd_residual; } ;


 scalar_t__ ESP100 ;
 int ESP_CMD_FLAG_AUTOSENSE ;
 int ESP_CMD_FLAG_RESIDUAL ;
 int ESP_CMD_FLAG_WRITE ;
 struct esp_cmd_priv* ESP_CMD_PRIV (struct scsi_cmnd*) ;
 int ESP_CONFIG2_FENAB ;
 int ESP_CONFIG3_EWIDE ;
 int ESP_DIP ;
 int ESP_DOP ;
 int ESP_FDATA ;
 int ESP_FFLAGS ;
 int ESP_FF_FBYTES ;
 int ESP_FF_ONOTZERO ;
 int ESP_STATUS ;
 int ESP_STAT_PMASK ;
 int ESP_STAT_TCNT ;
 int ESP_TCHI ;
 int ESP_TCLOW ;
 int ESP_TCMED ;
 scalar_t__ FASHME ;
 int FAS_RLO ;
 scalar_t__ PCSCSI ;
 int esp_flush_fifo (struct esp*) ;
 int esp_read8 (int ) ;
 scalar_t__ likely (int*) ;
 int* scsi_kmap_atomic_sg (int ,int ,size_t*,size_t*) ;
 int scsi_kunmap_atomic_sg (int*) ;

__attribute__((used)) static int esp_data_bytes_sent(struct esp *esp, struct esp_cmd_entry *ent,
          struct scsi_cmnd *cmd)
{
 int fifo_cnt, ecount, bytes_sent, flush_fifo;

 fifo_cnt = esp_read8(ESP_FFLAGS) & ESP_FF_FBYTES;
 if (esp->prev_cfg3 & ESP_CONFIG3_EWIDE)
  fifo_cnt <<= 1;

 ecount = 0;
 if (!(esp->sreg & ESP_STAT_TCNT)) {
  ecount = ((unsigned int)esp_read8(ESP_TCLOW) |
     (((unsigned int)esp_read8(ESP_TCMED)) << 8));
  if (esp->rev == FASHME)
   ecount |= ((unsigned int)esp_read8(FAS_RLO)) << 16;
  if (esp->rev == PCSCSI && (esp->config2 & ESP_CONFIG2_FENAB))
   ecount |= ((unsigned int)esp_read8(ESP_TCHI)) << 16;
 }

 bytes_sent = esp->data_dma_len;
 bytes_sent -= ecount;
 bytes_sent -= esp->send_cmd_residual;
 if (fifo_cnt == 1 && ent->flags & ESP_CMD_FLAG_RESIDUAL) {
  size_t count = 1;
  size_t offset = bytes_sent;
  u8 bval = esp_read8(ESP_FDATA);

  if (ent->flags & ESP_CMD_FLAG_AUTOSENSE)
   ent->sense_ptr[bytes_sent] = bval;
  else {
   struct esp_cmd_priv *p = ESP_CMD_PRIV(cmd);
   u8 *ptr;

   ptr = scsi_kmap_atomic_sg(p->cur_sg, p->num_sg,
        &offset, &count);
   if (likely(ptr)) {
    *(ptr + offset) = bval;
    scsi_kunmap_atomic_sg(ptr);
   }
  }
  bytes_sent += fifo_cnt;
  ent->flags &= ~ESP_CMD_FLAG_RESIDUAL;
 }
 if (!(ent->flags & ESP_CMD_FLAG_WRITE))
  bytes_sent -= fifo_cnt;

 flush_fifo = 0;
 if (!esp->prev_soff) {

  flush_fifo = 1;
 } else {
  if (esp->rev == ESP100) {
   u32 fflags, phase;
   esp->sreg = esp_read8(ESP_STATUS);
   phase = esp->sreg & ESP_STAT_PMASK;
   fflags = esp_read8(ESP_FFLAGS);

   if ((phase == ESP_DOP &&
        (fflags & ESP_FF_ONOTZERO)) ||
       (phase == ESP_DIP &&
        (fflags & ESP_FF_FBYTES)))
    return -1;
  }
  if (!(ent->flags & ESP_CMD_FLAG_WRITE))
   flush_fifo = 1;
 }

 if (flush_fifo)
  esp_flush_fifo(esp);

 return bytes_sent;
}
