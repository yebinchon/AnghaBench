
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_fragment {int frag_count; } ;


 int atomic_inc (int *) ;
 scalar_t__ likely (struct configfs_fragment*) ;

struct configfs_fragment *get_fragment(struct configfs_fragment *frag)
{
 if (likely(frag))
  atomic_inc(&frag->frag_count);
 return frag;
}
