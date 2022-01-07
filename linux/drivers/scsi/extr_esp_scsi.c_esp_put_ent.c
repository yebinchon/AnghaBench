
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_cmd_entry {int list; } ;
struct esp {int esp_cmd_pool; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void esp_put_ent(struct esp *esp, struct esp_cmd_entry *ent)
{
 list_add(&ent->list, &esp->esp_cmd_pool);
}
