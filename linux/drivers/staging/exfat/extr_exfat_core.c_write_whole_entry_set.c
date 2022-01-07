
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct entry_set_cache_t {int num_entries; int offset; int sector; } ;
typedef int s32 ;


 int __write_partial_entries_in_entry_set (struct super_block*,struct entry_set_cache_t*,int ,int ,int ) ;

s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
{
 return __write_partial_entries_in_entry_set(sb, es, es->sector,
          es->offset,
          es->num_entries);
}
