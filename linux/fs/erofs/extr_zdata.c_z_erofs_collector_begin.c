
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z_erofs_collector {int cl; scalar_t__ owned_head; scalar_t__ mode; int compressedpages; TYPE_1__* pcl; int vector; } ;
struct z_erofs_collection {int vcnt; int pagevec; } ;
struct inode {int dummy; } ;
struct erofs_map_blocks {int m_pa; } ;
struct TYPE_2__ {int compressed_pages; } ;


 scalar_t__ COLLECT_PRIMARY ;
 int DBG_BUGON (int) ;
 int EAGAIN ;
 int EINVAL ;
 struct z_erofs_collection* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct z_erofs_collection*) ;
 int PAGE_ALIGNED (int ) ;
 int PTR_ERR (struct z_erofs_collection*) ;
 scalar_t__ Z_EROFS_CLUSTER_MAX_PAGES ;
 int Z_EROFS_NR_INLINE_PAGEVECS ;
 scalar_t__ Z_EROFS_PCLUSTER_NIL ;
 scalar_t__ Z_EROFS_PCLUSTER_TAIL_CLOSED ;
 struct z_erofs_collection* cllookup (struct z_erofs_collector*,struct inode*,struct erofs_map_blocks*) ;
 struct z_erofs_collection* clregister (struct z_erofs_collector*,struct inode*,struct erofs_map_blocks*) ;
 int z_erofs_pagevec_ctor_init (int *,int ,int ,int ) ;

__attribute__((used)) static int z_erofs_collector_begin(struct z_erofs_collector *clt,
       struct inode *inode,
       struct erofs_map_blocks *map)
{
 struct z_erofs_collection *cl;

 DBG_BUGON(clt->cl);


 DBG_BUGON(clt->owned_head == Z_EROFS_PCLUSTER_NIL);
 DBG_BUGON(clt->owned_head == Z_EROFS_PCLUSTER_TAIL_CLOSED);

 if (!PAGE_ALIGNED(map->m_pa)) {
  DBG_BUGON(1);
  return -EINVAL;
 }

repeat:
 cl = cllookup(clt, inode, map);
 if (!cl) {
  cl = clregister(clt, inode, map);

  if (cl == ERR_PTR(-EAGAIN))
   goto repeat;
 }

 if (IS_ERR(cl))
  return PTR_ERR(cl);

 z_erofs_pagevec_ctor_init(&clt->vector, Z_EROFS_NR_INLINE_PAGEVECS,
      cl->pagevec, cl->vcnt);

 clt->compressedpages = clt->pcl->compressed_pages;
 if (clt->mode <= COLLECT_PRIMARY)
  clt->compressedpages += Z_EROFS_CLUSTER_MAX_PAGES;
 return 0;
}
