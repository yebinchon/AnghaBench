
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_device {TYPE_1__* pci_dev; } ;
struct imgu_css_map {size_t size; scalar_t__ vaddr; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int dev_warn (int *,char*,size_t,size_t) ;
 int imgu_dmamap_alloc (struct imgu_device*,struct imgu_css_map*,size_t) ;
 int imgu_dmamap_free (struct imgu_device*,struct imgu_css_map*) ;

int imgu_css_dma_buffer_resize(struct imgu_device *imgu,
          struct imgu_css_map *map, size_t size)
{
 if (map->size < size && map->vaddr) {
  dev_warn(&imgu->pci_dev->dev, "dma buf resized from %zu to %zu",
    map->size, size);

  imgu_dmamap_free(imgu, map);
  if (!imgu_dmamap_alloc(imgu, map, size))
   return -ENOMEM;
 }

 return 0;
}
