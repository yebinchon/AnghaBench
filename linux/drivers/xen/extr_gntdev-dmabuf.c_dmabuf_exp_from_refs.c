
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct gntdev_priv {int dmabuf_priv; int dma_dev; int lock; } ;
struct gntdev_grant_map {int pages; int count; int flags; TYPE_1__* grants; } ;
struct gntdev_dmabuf_export_args {int fd; int pages; int count; int dmabuf_priv; int dev; struct gntdev_grant_map* map; struct gntdev_priv* priv; } ;
struct TYPE_2__ {void* ref; void* domid; } ;


 int GNTMAP_device_map ;
 int GNTMAP_host_map ;
 scalar_t__ IS_ERR (struct gntdev_grant_map*) ;
 int PTR_ERR (struct gntdev_grant_map*) ;
 struct gntdev_grant_map* dmabuf_exp_alloc_backing_storage (struct gntdev_priv*,int,int) ;
 int dmabuf_exp_from_pages (struct gntdev_dmabuf_export_args*) ;
 int dmabuf_exp_remove_map (struct gntdev_priv*,struct gntdev_grant_map*) ;
 int gntdev_add_map (struct gntdev_priv*,struct gntdev_grant_map*) ;
 int gntdev_map_grant_pages (struct gntdev_grant_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dmabuf_exp_from_refs(struct gntdev_priv *priv, int flags,
    int count, u32 domid, u32 *refs, u32 *fd)
{
 struct gntdev_grant_map *map;
 struct gntdev_dmabuf_export_args args;
 int i, ret;

 map = dmabuf_exp_alloc_backing_storage(priv, flags, count);
 if (IS_ERR(map))
  return PTR_ERR(map);

 for (i = 0; i < count; i++) {
  map->grants[i].domid = domid;
  map->grants[i].ref = refs[i];
 }

 mutex_lock(&priv->lock);
 gntdev_add_map(priv, map);
 mutex_unlock(&priv->lock);

 map->flags |= GNTMAP_host_map;




 ret = gntdev_map_grant_pages(map);
 if (ret < 0)
  goto out;

 args.priv = priv;
 args.map = map;
 args.dev = priv->dma_dev;
 args.dmabuf_priv = priv->dmabuf_priv;
 args.count = map->count;
 args.pages = map->pages;
 args.fd = -1;

 ret = dmabuf_exp_from_pages(&args);
 if (ret < 0)
  goto out;

 *fd = args.fd;
 return 0;

out:
 dmabuf_exp_remove_map(priv, map);
 return ret;
}
