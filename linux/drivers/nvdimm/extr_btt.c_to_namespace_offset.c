
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct arena_info {int dataoff; int internal_lbasize; } ;



__attribute__((used)) static u64 to_namespace_offset(struct arena_info *arena, u64 lba)
{
 return arena->dataoff + ((u64)lba * arena->internal_lbasize);
}
