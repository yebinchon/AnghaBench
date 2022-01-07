
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_changeset {int dummy; } ;


 int extent_changeset_release (struct extent_changeset*) ;
 int kfree (struct extent_changeset*) ;

__attribute__((used)) static inline void extent_changeset_free(struct extent_changeset *changeset)
{
 if (!changeset)
  return;
 extent_changeset_release(changeset);
 kfree(changeset);
}
