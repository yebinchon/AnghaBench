
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct kmem_cache {int dummy; } ;
struct area_priv {int is_write; size_t count; void* addr; void* flags; } ;
struct ab_task {struct area_priv area_pd; } ;


 struct ab_task* ab_task_create_get (struct kmem_cache*,int ) ;
 int task_fn_area ;

__attribute__((used)) static struct ab_task *
create_area_reader(struct kmem_cache *qcache, u16 flags, u16 addr,
     size_t count)
{
 struct ab_task *t;
 struct area_priv *ap;

 t = ab_task_create_get(qcache, task_fn_area);
 if (!t)
  return ((void*)0);
 ap = &t->area_pd;
 ap->flags = flags;
 ap->addr = addr;
 ap->is_write = 0;
 ap->count = count;
 return t;
}
