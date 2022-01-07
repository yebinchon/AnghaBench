
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct log_entry {int new_map; int lba; int old_map; int seq; } ;
struct free_entry {int dummy; } ;
struct arena_info {size_t nfree; TYPE_1__* freelist; } ;
struct TYPE_2__ {int sub; size_t block; int has_err; int seq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LOG_NEW_ENT ;
 int arena_clear_freelist_error (struct arena_info*,size_t) ;
 int btt_log_read (struct arena_info*,size_t,struct log_entry*,int ) ;
 int btt_map_read (struct arena_info*,int ,size_t*,int *,int *,int ) ;
 int btt_map_write (struct arena_info*,int ,int ,int ,int ,int ) ;
 int dev_err_ratelimited (int ,char*) ;
 scalar_t__ ent_e_flag (int ) ;
 size_t ent_lba (int ) ;
 int ent_normal (int ) ;
 TYPE_1__* kcalloc (size_t,int,int ) ;
 int le32_to_cpu (int ) ;
 int nd_inc_seq (int ) ;
 int to_dev (struct arena_info*) ;

__attribute__((used)) static int btt_freelist_init(struct arena_info *arena)
{
 int new, ret;
 struct log_entry log_new;
 u32 i, map_entry, log_oldmap, log_newmap;

 arena->freelist = kcalloc(arena->nfree, sizeof(struct free_entry),
     GFP_KERNEL);
 if (!arena->freelist)
  return -ENOMEM;

 for (i = 0; i < arena->nfree; i++) {
  new = btt_log_read(arena, i, &log_new, LOG_NEW_ENT);
  if (new < 0)
   return new;


  log_oldmap = ent_lba(le32_to_cpu(log_new.old_map));
  log_newmap = ent_lba(le32_to_cpu(log_new.new_map));


  arena->freelist[i].sub = 1 - new;
  arena->freelist[i].seq = nd_inc_seq(le32_to_cpu(log_new.seq));
  arena->freelist[i].block = log_oldmap;





  if (ent_e_flag(le32_to_cpu(log_new.old_map)) &&
      !ent_normal(le32_to_cpu(log_new.old_map))) {
   arena->freelist[i].has_err = 1;
   ret = arena_clear_freelist_error(arena, i);
   if (ret)
    dev_err_ratelimited(to_dev(arena),
     "Unable to clear known errors\n");
  }


  if (log_oldmap == log_newmap)
   continue;


  ret = btt_map_read(arena, le32_to_cpu(log_new.lba), &map_entry,
    ((void*)0), ((void*)0), 0);
  if (ret)
   return ret;
  if ((log_newmap != map_entry) && (log_oldmap == map_entry)) {




   ret = btt_map_write(arena, le32_to_cpu(log_new.lba),
     le32_to_cpu(log_new.new_map), 0, 0, 0);
   if (ret)
    return ret;
  }
 }

 return 0;
}
