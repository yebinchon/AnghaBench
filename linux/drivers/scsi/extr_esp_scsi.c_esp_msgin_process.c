
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp_cmd_priv {int cur_residue; int tot_residue; int prv_sg; int cur_sg; } ;
struct esp_cmd_entry {int message; int cmd; } ;
struct esp {int* msg_in; int msg_in_len; int* msg_out; int msg_out_len; int flags; struct esp_cmd_entry* active_cmd; int host; } ;




 struct esp_cmd_priv* ESP_CMD_PRIV (int ) ;
 int ESP_CMD_SATN ;
 int ESP_EVENT_FREE_BUS ;
 int ESP_FLAG_QUICKIRQ_CHECK ;


 int KERN_INFO ;




 int esp_event (struct esp*,int ) ;
 int esp_msgin_extended (struct esp*) ;
 int esp_msgin_reject (struct esp*) ;
 int esp_restore_pointers (struct esp*,struct esp_cmd_entry*) ;
 int esp_save_pointers (struct esp*,struct esp_cmd_entry*) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 int sg_dma_len (int ) ;
 int shost_printk (int ,int ,char*) ;

__attribute__((used)) static int esp_msgin_process(struct esp *esp)
{
 u8 msg0 = esp->msg_in[0];
 int len = esp->msg_in_len;

 if (msg0 & 0x80) {

  shost_printk(KERN_INFO, esp->host,
        "Unexpected msgin identify\n");
  return 0;
 }

 switch (msg0) {
 case 133:
  if (len == 1)
   return 1;
  if (len < esp->msg_in[1] + 2)
   return 1;
  esp_msgin_extended(esp);
  return 0;

 case 132: {
  struct esp_cmd_entry *ent;
  struct esp_cmd_priv *spriv;
  if (len == 1)
   return 1;

  if (esp->msg_in[1] != 1)
   goto do_reject;

  ent = esp->active_cmd;
  spriv = ESP_CMD_PRIV(ent->cmd);

  if (spriv->cur_residue == sg_dma_len(spriv->cur_sg)) {
   spriv->cur_sg = spriv->prv_sg;
   spriv->cur_residue = 1;
  } else
   spriv->cur_residue++;
  spriv->tot_residue++;
  return 0;
 }
 case 130:
  return 0;
 case 129:
  esp_restore_pointers(esp, esp->active_cmd);
  return 0;
 case 128:
  esp_save_pointers(esp, esp->active_cmd);
  return 0;

 case 135:
 case 134: {
  struct esp_cmd_entry *ent = esp->active_cmd;

  ent->message = msg0;
  esp_event(esp, ESP_EVENT_FREE_BUS);
  esp->flags |= ESP_FLAG_QUICKIRQ_CHECK;
  return 0;
 }
 case 131:
  esp_msgin_reject(esp);
  return 0;

 default:
 do_reject:
  esp->msg_out[0] = 131;
  esp->msg_out_len = 1;
  scsi_esp_cmd(esp, ESP_CMD_SATN);
  return 0;
 }
}
