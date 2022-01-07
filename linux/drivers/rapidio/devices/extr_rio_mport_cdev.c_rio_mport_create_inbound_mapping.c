
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rio_mport_mapping {int phys_addr; int rio_addr; int size; int * virt_addr; int node; int ref; struct mport_dev* md; struct file* filp; int dir; } ;
struct TYPE_2__ {int parent; } ;
struct rio_mport {TYPE_1__ dev; } ;
struct mport_dev {int buf_mutex; int mappings; struct rio_mport* mport; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAP_INBOUND ;
 int RIO_MAP_ANY_ADDR ;
 int * dma_alloc_coherent (int ,int,int*,int ) ;
 int dma_free_coherent (int ,int,int *,int) ;
 int kfree (struct rio_mport_mapping*) ;
 int kref_init (int *) ;
 struct rio_mport_mapping* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rio_map_inb_region (struct rio_mport*,int,int,int ,int ) ;

__attribute__((used)) static int
rio_mport_create_inbound_mapping(struct mport_dev *md, struct file *filp,
    u64 raddr, u64 size,
    struct rio_mport_mapping **mapping)
{
 struct rio_mport *mport = md->mport;
 struct rio_mport_mapping *map;
 int ret;


 if (size > 0xffffffff)
  return -EINVAL;

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (map == ((void*)0))
  return -ENOMEM;

 map->virt_addr = dma_alloc_coherent(mport->dev.parent, size,
         &map->phys_addr, GFP_KERNEL);
 if (map->virt_addr == ((void*)0)) {
  ret = -ENOMEM;
  goto err_dma_alloc;
 }

 if (raddr == RIO_MAP_ANY_ADDR)
  raddr = map->phys_addr;
 ret = rio_map_inb_region(mport, map->phys_addr, raddr, (u32)size, 0);
 if (ret < 0)
  goto err_map_inb;

 map->dir = MAP_INBOUND;
 map->rio_addr = raddr;
 map->size = size;
 map->filp = filp;
 map->md = md;
 kref_init(&map->ref);
 mutex_lock(&md->buf_mutex);
 list_add_tail(&map->node, &md->mappings);
 mutex_unlock(&md->buf_mutex);
 *mapping = map;
 return 0;

err_map_inb:
 dma_free_coherent(mport->dev.parent, size,
     map->virt_addr, map->phys_addr);
err_dma_alloc:
 kfree(map);
 return ret;
}
