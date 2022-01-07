
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btt_sb {int dummy; } ;
struct arena_info {int infooff; int info2off; } ;


 int IS_ALIGNED (int ,int) ;
 int arena_write_bytes (struct arena_info*,int ,struct btt_sb*,int,int ) ;
 int dev_WARN_ONCE (int ,int,char*,int ) ;
 int to_dev (struct arena_info*) ;

__attribute__((used)) static int btt_info_write(struct arena_info *arena, struct btt_sb *super)
{
 int ret;






 dev_WARN_ONCE(to_dev(arena), !IS_ALIGNED(arena->infooff, 512),
  "arena->infooff: %#llx is unaligned\n", arena->infooff);
 dev_WARN_ONCE(to_dev(arena), !IS_ALIGNED(arena->info2off, 512),
  "arena->info2off: %#llx is unaligned\n", arena->info2off);

 ret = arena_write_bytes(arena, arena->info2off, super,
   sizeof(struct btt_sb), 0);
 if (ret)
  return ret;

 return arena_write_bytes(arena, arena->infooff, super,
   sizeof(struct btt_sb), 0);
}
