
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_collector {scalar_t__ mode; struct z_erofs_collection* cl; int vector; } ;
struct z_erofs_collection {int lock; } ;


 scalar_t__ COLLECT_PRIMARY_FOLLOWED_NOINPLACE ;
 int mutex_unlock (int *) ;
 int z_erofs_collection_put (struct z_erofs_collection*) ;
 int z_erofs_pagevec_ctor_exit (int *,int) ;

__attribute__((used)) static bool z_erofs_collector_end(struct z_erofs_collector *clt)
{
 struct z_erofs_collection *cl = clt->cl;

 if (!cl)
  return 0;

 z_erofs_pagevec_ctor_exit(&clt->vector, 0);
 mutex_unlock(&cl->lock);





 if (clt->mode < COLLECT_PRIMARY_FOLLOWED_NOINPLACE)
  z_erofs_collection_put(cl);

 clt->cl = ((void*)0);
 return 1;
}
