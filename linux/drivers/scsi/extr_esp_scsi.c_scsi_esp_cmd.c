
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp_event_ent {int val; int type; } ;
struct esp {int esp_event_cur; struct esp_event_ent* esp_event_log; } ;


 int ESP_CMD ;
 int ESP_EVENT_LOG_SZ ;
 int ESP_EVENT_TYPE_CMD ;
 int esp_log_command (char*,int ) ;
 int esp_log_fill_regs (struct esp*,struct esp_event_ent*) ;
 int esp_write8 (int ,int ) ;

void scsi_esp_cmd(struct esp *esp, u8 val)
{
 struct esp_event_ent *p;
 int idx = esp->esp_event_cur;

 p = &esp->esp_event_log[idx];
 p->type = ESP_EVENT_TYPE_CMD;
 p->val = val;
 esp_log_fill_regs(esp, p);

 esp->esp_event_cur = (idx + 1) & (ESP_EVENT_LOG_SZ - 1);

 esp_log_command("cmd[%02x]\n", val);
 esp_write8(val, ESP_CMD);
}
