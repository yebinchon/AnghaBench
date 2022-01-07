
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct z_erofs_pcluster {TYPE_1__ obj; } ;
struct z_erofs_collection {int vcnt; int nr_pages; } ;


 int DBG_BUGON (int ) ;
 int atomic_set (int *,int) ;
 struct z_erofs_collection* z_erofs_primarycollection (struct z_erofs_pcluster*) ;

__attribute__((used)) static void z_erofs_pcluster_init_always(struct z_erofs_pcluster *pcl)
{
 struct z_erofs_collection *cl = z_erofs_primarycollection(pcl);

 atomic_set(&pcl->obj.refcount, 1);

 DBG_BUGON(cl->nr_pages);
 DBG_BUGON(cl->vcnt);
}
