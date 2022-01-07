
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_changeset {int range_changed; scalar_t__ bytes_changed; } ;


 int ulist_release (int *) ;

__attribute__((used)) static inline void extent_changeset_release(struct extent_changeset *changeset)
{
 if (!changeset)
  return;
 changeset->bytes_changed = 0;
 ulist_release(&changeset->range_changed);
}
