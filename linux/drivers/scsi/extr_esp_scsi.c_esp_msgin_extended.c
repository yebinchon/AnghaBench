
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct esp_target_data {int dummy; } ;
struct esp_cmd_entry {struct scsi_cmnd* cmd; } ;
struct esp {scalar_t__* msg_in; int msg_out_len; int * msg_out; int host; struct esp_target_data* target; struct esp_cmd_entry* active_cmd; } ;
struct TYPE_2__ {int id; } ;


 int ESP_CMD_SATN ;
 scalar_t__ EXTENDED_SDTR ;
 scalar_t__ EXTENDED_WDTR ;
 int KERN_INFO ;
 int MESSAGE_REJECT ;
 int esp_msgin_sdtr (struct esp*,struct esp_target_data*) ;
 int esp_msgin_wdtr (struct esp*,struct esp_target_data*) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 int shost_printk (int ,int ,char*,scalar_t__) ;

__attribute__((used)) static void esp_msgin_extended(struct esp *esp)
{
 struct esp_cmd_entry *ent = esp->active_cmd;
 struct scsi_cmnd *cmd = ent->cmd;
 struct esp_target_data *tp;
 int tgt = cmd->device->id;

 tp = &esp->target[tgt];
 if (esp->msg_in[2] == EXTENDED_SDTR) {
  esp_msgin_sdtr(esp, tp);
  return;
 }
 if (esp->msg_in[2] == EXTENDED_WDTR) {
  esp_msgin_wdtr(esp, tp);
  return;
 }

 shost_printk(KERN_INFO, esp->host,
       "Unexpected extended msg type %x\n", esp->msg_in[2]);

 esp->msg_out[0] = MESSAGE_REJECT;
 esp->msg_out_len = 1;
 scsi_esp_cmd(esp, ESP_CMD_SATN);
}
