
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pcluster {int ** compressed_pages; } ;
struct z_erofs_collection {scalar_t__ vcnt; scalar_t__ nr_pages; int lock; } ;


 unsigned int Z_EROFS_CLUSTER_MAX_PAGES ;
 int mutex_init (int *) ;
 struct z_erofs_collection* z_erofs_primarycollection (struct z_erofs_pcluster*) ;

__attribute__((used)) static void z_erofs_pcluster_init_once(void *ptr)
{
 struct z_erofs_pcluster *pcl = ptr;
 struct z_erofs_collection *cl = z_erofs_primarycollection(pcl);
 unsigned int i;

 mutex_init(&cl->lock);
 cl->nr_pages = 0;
 cl->vcnt = 0;
 for (i = 0; i < Z_EROFS_CLUSTER_MAX_PAGES; ++i)
  pcl->compressed_pages[i] = ((void*)0);
}
