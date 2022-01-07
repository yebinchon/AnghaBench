
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
struct z_erofs_pcluster {int length; int clusterbits; int *** next; TYPE_1__ obj; int algorithmformat; } ;
struct z_erofs_collector {struct z_erofs_collection* cl; struct z_erofs_pcluster* pcl; int **** owned_head; struct z_erofs_pcluster* tailpcl; int mode; } ;
struct z_erofs_collection {int pageofs; int lock; } ;
struct inode {int i_sb; } ;
struct erofs_map_blocks {int m_pa; int m_llen; int m_flags; int m_la; } ;
struct TYPE_4__ {int* z_physical_clusterbits; } ;


 int COLLECT_PRIMARY_FOLLOWED ;
 int EAGAIN ;
 int ENOMEM ;
 TYPE_2__* EROFS_I (struct inode*) ;
 int EROFS_MAP_FULL_MAPPED ;
 int EROFS_MAP_ZIPPED ;
 struct z_erofs_collection* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int Z_EROFS_COMPRESSION_LZ4 ;
 int Z_EROFS_COMPRESSION_SHIFTED ;
 int Z_EROFS_PCLUSTER_FULL_LENGTH ;
 int Z_EROFS_PCLUSTER_LENGTH_BIT ;
 int ** Z_EROFS_PCLUSTER_TAIL ;
 int erofs_register_workgroup (int ,TYPE_1__*,int ) ;
 struct z_erofs_pcluster* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct z_erofs_pcluster*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int pcluster_cachep ;
 int z_erofs_pcluster_init_always (struct z_erofs_pcluster*) ;
 struct z_erofs_collection* z_erofs_primarycollection (struct z_erofs_pcluster*) ;

__attribute__((used)) static struct z_erofs_collection *clregister(struct z_erofs_collector *clt,
          struct inode *inode,
          struct erofs_map_blocks *map)
{
 struct z_erofs_pcluster *pcl;
 struct z_erofs_collection *cl;
 int err;


 pcl = kmem_cache_alloc(pcluster_cachep, GFP_NOFS);
 if (!pcl)
  return ERR_PTR(-ENOMEM);

 z_erofs_pcluster_init_always(pcl);
 pcl->obj.index = map->m_pa >> PAGE_SHIFT;

 pcl->length = (map->m_llen << Z_EROFS_PCLUSTER_LENGTH_BIT) |
  (map->m_flags & EROFS_MAP_FULL_MAPPED ?
   Z_EROFS_PCLUSTER_FULL_LENGTH : 0);

 if (map->m_flags & EROFS_MAP_ZIPPED)
  pcl->algorithmformat = Z_EROFS_COMPRESSION_LZ4;
 else
  pcl->algorithmformat = Z_EROFS_COMPRESSION_SHIFTED;

 pcl->clusterbits = EROFS_I(inode)->z_physical_clusterbits[0];
 pcl->clusterbits -= PAGE_SHIFT;


 pcl->next = clt->owned_head;
 clt->mode = COLLECT_PRIMARY_FOLLOWED;

 cl = z_erofs_primarycollection(pcl);
 cl->pageofs = map->m_la & ~PAGE_MASK;





 mutex_trylock(&cl->lock);

 err = erofs_register_workgroup(inode->i_sb, &pcl->obj, 0);
 if (err) {
  mutex_unlock(&cl->lock);
  kmem_cache_free(pcluster_cachep, pcl);
  return ERR_PTR(-EAGAIN);
 }

 if (clt->owned_head == Z_EROFS_PCLUSTER_TAIL)
  clt->tailpcl = pcl;
 clt->owned_head = &pcl->next;
 clt->pcl = pcl;
 clt->cl = cl;
 return cl;
}
