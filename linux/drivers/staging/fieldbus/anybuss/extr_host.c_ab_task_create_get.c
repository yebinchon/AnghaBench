
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct ab_task {int done; scalar_t__ result; int * done_fn; int task_fn; int refcount; struct kmem_cache* cache; } ;
typedef int ab_task_fn_t ;


 int GFP_KERNEL ;
 int init_completion (int *) ;
 struct ab_task* kmem_cache_alloc (struct kmem_cache*,int ) ;
 int kref_init (int *) ;

__attribute__((used)) static struct ab_task *ab_task_create_get(struct kmem_cache *cache,
       ab_task_fn_t task_fn)
{
 struct ab_task *t;

 t = kmem_cache_alloc(cache, GFP_KERNEL);
 if (!t)
  return ((void*)0);
 t->cache = cache;
 kref_init(&t->refcount);
 t->task_fn = task_fn;
 t->done_fn = ((void*)0);
 t->result = 0;
 init_completion(&t->done);
 return t;
}
