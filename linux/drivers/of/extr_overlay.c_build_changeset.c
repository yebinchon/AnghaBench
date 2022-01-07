
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int in_livetree; int np; } ;
struct overlay_changeset {int count; struct fragment* fragments; scalar_t__ symbols_fragment; } ;
struct fragment {int target; int overlay; } ;


 int build_changeset_next_level (struct overlay_changeset*,struct target*,int ) ;
 int build_changeset_symbols_node (struct overlay_changeset*,struct target*,int ) ;
 int changeset_dup_entry_check (struct overlay_changeset*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int build_changeset(struct overlay_changeset *ovcs)
{
 struct fragment *fragment;
 struct target target;
 int fragments_count, i, ret;





 if (ovcs->symbols_fragment)
  fragments_count = ovcs->count - 1;
 else
  fragments_count = ovcs->count;

 for (i = 0; i < fragments_count; i++) {
  fragment = &ovcs->fragments[i];

  target.np = fragment->target;
  target.in_livetree = 1;
  ret = build_changeset_next_level(ovcs, &target,
       fragment->overlay);
  if (ret) {
   pr_debug("fragment apply failed '%pOF'\n",
     fragment->target);
   return ret;
  }
 }

 if (ovcs->symbols_fragment) {
  fragment = &ovcs->fragments[ovcs->count - 1];

  target.np = fragment->target;
  target.in_livetree = 1;
  ret = build_changeset_symbols_node(ovcs, &target,
         fragment->overlay);
  if (ret) {
   pr_debug("symbols fragment apply failed '%pOF'\n",
     fragment->target);
   return ret;
  }
 }

 return changeset_dup_entry_check(ovcs);
}
