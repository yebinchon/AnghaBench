
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_changeset {int range_changed; scalar_t__ bytes_changed; } ;


 int ulist_init (int *) ;

__attribute__((used)) static inline void extent_changeset_init(struct extent_changeset *changeset)
{
 changeset->bytes_changed = 0;
 ulist_init(&changeset->range_changed);
}
