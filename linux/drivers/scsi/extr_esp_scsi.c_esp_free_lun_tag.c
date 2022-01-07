
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_lun_data {struct esp_cmd_entry* non_tagged_cmd; int num_tagged; struct esp_cmd_entry** tagged_cmds; } ;
struct esp_cmd_entry {int* orig_tag; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void esp_free_lun_tag(struct esp_cmd_entry *ent,
        struct esp_lun_data *lp)
{
 if (ent->orig_tag[0]) {
  BUG_ON(lp->tagged_cmds[ent->orig_tag[1]] != ent);
  lp->tagged_cmds[ent->orig_tag[1]] = ((void*)0);
  lp->num_tagged--;
 } else {
  BUG_ON(lp->non_tagged_cmd != ent);
  lp->non_tagged_cmd = ((void*)0);
 }
}
