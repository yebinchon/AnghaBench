
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_dma_alloc_args {int coherent; int dev_bus_addr; scalar_t__ vaddr; struct gntdev_grant_map* frames; struct gntdev_grant_map* pages; int nr_pages; int dev; } ;
struct gntdev_grant_map {int dma_flags; struct gntdev_grant_map* kunmap_ops; struct gntdev_grant_map* kmap_ops; struct gntdev_grant_map* unmap_ops; struct gntdev_grant_map* map_ops; struct gntdev_grant_map* grants; struct gntdev_grant_map* pages; struct gntdev_grant_map* frames; int count; int dma_bus_addr; scalar_t__ dma_vaddr; int dma_dev; } ;


 int GNTDEV_DMA_FLAG_COHERENT ;
 int gnttab_dma_free_pages (struct gnttab_dma_alloc_args*) ;
 int gnttab_free_pages (int ,struct gntdev_grant_map*) ;
 int kfree (struct gntdev_grant_map*) ;

__attribute__((used)) static void gntdev_free_map(struct gntdev_grant_map *map)
{
 if (map == ((void*)0))
  return;
 if (map->pages)
  gnttab_free_pages(map->count, map->pages);




 kfree(map->pages);
 kfree(map->grants);
 kfree(map->map_ops);
 kfree(map->unmap_ops);
 kfree(map->kmap_ops);
 kfree(map->kunmap_ops);
 kfree(map);
}
