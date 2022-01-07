
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct esp_event_ent {void* val; int type; } ;
struct esp {int esp_event_cur; void* event; struct esp_event_ent* esp_event_log; } ;


 int ESP_EVENT_LOG_SZ ;
 int ESP_EVENT_TYPE_EVENT ;
 int esp_log_fill_regs (struct esp*,struct esp_event_ent*) ;

__attribute__((used)) static void esp_event(struct esp *esp, u8 val)
{
 struct esp_event_ent *p;
 int idx = esp->esp_event_cur;

 p = &esp->esp_event_log[idx];
 p->type = ESP_EVENT_TYPE_EVENT;
 p->val = val;
 esp_log_fill_regs(esp, p);

 esp->esp_event_cur = (idx + 1) & (ESP_EVENT_LOG_SZ - 1);

 esp->event = val;
}
