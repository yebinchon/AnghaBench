
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gnttab_dma_alloc_args {int coherent; int nr_pages; int dev_bus_addr; int vaddr; void* frames; int * pages; int dev; } ;
struct gntdev_priv {int dma_dev; } ;
struct gntdev_grant_map {int dma_flags; int count; int users; scalar_t__ index; TYPE_4__* kunmap_ops; TYPE_3__* kmap_ops; TYPE_2__* unmap_ops; TYPE_1__* map_ops; int * pages; int dma_bus_addr; int dma_vaddr; void* frames; int dma_dev; int * grants; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_6__ {int handle; } ;
struct TYPE_5__ {int handle; } ;


 int GFP_KERNEL ;
 int GNTDEV_DMA_FLAG_COHERENT ;
 int GNTDEV_DMA_FLAG_WC ;
 int gntdev_free_map (struct gntdev_grant_map*) ;
 scalar_t__ gnttab_alloc_pages (int,int *) ;
 scalar_t__ gnttab_dma_alloc_pages (struct gnttab_dma_alloc_args*) ;
 void* kcalloc (int,int,int ) ;
 struct gntdev_grant_map* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

struct gntdev_grant_map *gntdev_alloc_map(struct gntdev_priv *priv, int count,
       int dma_flags)
{
 struct gntdev_grant_map *add;
 int i;

 add = kzalloc(sizeof(*add), GFP_KERNEL);
 if (((void*)0) == add)
  return ((void*)0);

 add->grants = kcalloc(count, sizeof(add->grants[0]), GFP_KERNEL);
 add->map_ops = kcalloc(count, sizeof(add->map_ops[0]), GFP_KERNEL);
 add->unmap_ops = kcalloc(count, sizeof(add->unmap_ops[0]), GFP_KERNEL);
 add->kmap_ops = kcalloc(count, sizeof(add->kmap_ops[0]), GFP_KERNEL);
 add->kunmap_ops = kcalloc(count, sizeof(add->kunmap_ops[0]), GFP_KERNEL);
 add->pages = kcalloc(count, sizeof(add->pages[0]), GFP_KERNEL);
 if (((void*)0) == add->grants ||
     ((void*)0) == add->map_ops ||
     ((void*)0) == add->unmap_ops ||
     ((void*)0) == add->kmap_ops ||
     ((void*)0) == add->kunmap_ops ||
     ((void*)0) == add->pages)
  goto err;
 if (gnttab_alloc_pages(count, add->pages))
  goto err;

 for (i = 0; i < count; i++) {
  add->map_ops[i].handle = -1;
  add->unmap_ops[i].handle = -1;
  add->kmap_ops[i].handle = -1;
  add->kunmap_ops[i].handle = -1;
 }

 add->index = 0;
 add->count = count;
 refcount_set(&add->users, 1);

 return add;

err:
 gntdev_free_map(add);
 return ((void*)0);
}
