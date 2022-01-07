
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_fragment {int frag_dead; int frag_sem; int frag_count; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 struct configfs_fragment* kmalloc (int,int ) ;

__attribute__((used)) static struct configfs_fragment *new_fragment(void)
{
 struct configfs_fragment *p;

 p = kmalloc(sizeof(struct configfs_fragment), GFP_KERNEL);
 if (p) {
  atomic_set(&p->frag_count, 1);
  init_rwsem(&p->frag_sem);
  p->frag_dead = 0;
 }
 return p;
}
