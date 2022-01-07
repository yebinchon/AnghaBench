
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_event_ent {scalar_t__ type; int event; int select_state; int ireg; int sreg2; int seqreg; int sreg; int val; } ;
struct esp {int esp_event_cur; int host; struct esp_event_ent* esp_event_log; } ;


 int ESP_EVENT_LOG_SZ ;
 scalar_t__ ESP_EVENT_TYPE_CMD ;
 int KERN_INFO ;
 int shost_printk (int ,int ,char*,...) ;

__attribute__((used)) static void esp_dump_cmd_log(struct esp *esp)
{
 int idx = esp->esp_event_cur;
 int stop = idx;

 shost_printk(KERN_INFO, esp->host, "Dumping command log\n");
 do {
  struct esp_event_ent *p = &esp->esp_event_log[idx];

  shost_printk(KERN_INFO, esp->host,
        "ent[%d] %s val[%02x] sreg[%02x] seqreg[%02x] "
        "sreg2[%02x] ireg[%02x] ss[%02x] event[%02x]\n",
        idx,
        p->type == ESP_EVENT_TYPE_CMD ? "CMD" : "EVENT",
        p->val, p->sreg, p->seqreg,
        p->sreg2, p->ireg, p->select_state, p->event);

  idx = (idx + 1) & (ESP_EVENT_LOG_SZ - 1);
 } while (idx != stop);
}
