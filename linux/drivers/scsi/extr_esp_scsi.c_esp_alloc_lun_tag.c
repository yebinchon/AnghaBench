
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_lun_data {int hold; scalar_t__ num_tagged; struct esp_cmd_entry** tagged_cmds; struct esp_cmd_entry* non_tagged_cmd; } ;
struct esp_cmd_entry {size_t* orig_tag; } ;


 int BUG_ON (struct esp_cmd_entry*) ;
 int EBUSY ;

__attribute__((used)) static int esp_alloc_lun_tag(struct esp_cmd_entry *ent,
        struct esp_lun_data *lp)
{
 if (!ent->orig_tag[0]) {

  if (lp->non_tagged_cmd)
   return -EBUSY;

  if (lp->hold) {



   if (lp->num_tagged)
    return -EBUSY;




   lp->hold = 0;
  } else if (lp->num_tagged) {



   lp->hold = 1;
   return -EBUSY;
  }

  lp->non_tagged_cmd = ent;
  return 0;
 }


 if (lp->non_tagged_cmd || lp->hold)
  return -EBUSY;

 BUG_ON(lp->tagged_cmds[ent->orig_tag[1]]);

 lp->tagged_cmds[ent->orig_tag[1]] = ent;
 lp->num_tagged++;

 return 0;
}
