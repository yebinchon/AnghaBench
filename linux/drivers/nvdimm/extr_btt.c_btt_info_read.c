
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btt_sb {int dummy; } ;
struct arena_info {int infooff; } ;


 int arena_read_bytes (struct arena_info*,int ,struct btt_sb*,int,int ) ;

__attribute__((used)) static int btt_info_read(struct arena_info *arena, struct btt_sb *super)
{
 return arena_read_bytes(arena, arena->infooff, super,
   sizeof(struct btt_sb), 0);
}
