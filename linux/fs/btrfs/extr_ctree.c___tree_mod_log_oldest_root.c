
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int logical; } ;
struct tree_mod_elem {scalar_t__ op; TYPE_1__ old_root; } ;
struct extent_buffer {int fs_info; int start; } ;


 scalar_t__ MOD_LOG_ROOT_REPLACE ;
 struct tree_mod_elem* tree_mod_log_search_oldest (int ,int ,int ) ;

__attribute__((used)) static struct tree_mod_elem *__tree_mod_log_oldest_root(
  struct extent_buffer *eb_root, u64 time_seq)
{
 struct tree_mod_elem *tm;
 struct tree_mod_elem *found = ((void*)0);
 u64 root_logical = eb_root->start;
 int looped = 0;

 if (!time_seq)
  return ((void*)0);







 while (1) {
  tm = tree_mod_log_search_oldest(eb_root->fs_info, root_logical,
      time_seq);
  if (!looped && !tm)
   return ((void*)0);





  if (!tm)
   break;






  if (tm->op != MOD_LOG_ROOT_REPLACE)
   break;

  found = tm;
  root_logical = tm->old_root.logical;
  looped = 1;
 }


 if (!found)
  found = tm;

 return found;
}
