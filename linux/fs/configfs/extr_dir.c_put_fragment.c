
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_fragment {int frag_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct configfs_fragment*) ;

void put_fragment(struct configfs_fragment *frag)
{
 if (frag && atomic_dec_and_test(&frag->frag_count))
  kfree(frag);
}
