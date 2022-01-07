
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int hw_dev; } ;
struct comedi_buf_page {void* virt_addr; scalar_t__ dma_addr; } ;
struct comedi_buf_map {int dma_dir; unsigned int n_pages; struct comedi_buf_page* page_list; int dma_hw_dev; int refcount; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ DMA_NONE ;
 int GFP_KERNEL ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int SetPageReserved (int ) ;
 int comedi_buf_map_put (struct comedi_buf_map*) ;
 void* dma_alloc_coherent (int ,unsigned int,scalar_t__*,int ) ;
 int get_device (int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 int kref_init (int *) ;
 struct comedi_buf_map* kzalloc (int,int ) ;
 int virt_to_page (void*) ;
 struct comedi_buf_page* vzalloc (int) ;

__attribute__((used)) static struct comedi_buf_map *
comedi_buf_map_alloc(struct comedi_device *dev, enum dma_data_direction dma_dir,
       unsigned int n_pages)
{
 struct comedi_buf_map *bm;
 struct comedi_buf_page *buf;
 unsigned int i;

 bm = kzalloc(sizeof(*bm), GFP_KERNEL);
 if (!bm)
  return ((void*)0);

 kref_init(&bm->refcount);
 bm->dma_dir = dma_dir;
 if (bm->dma_dir != DMA_NONE) {

  bm->dma_hw_dev = get_device(dev->hw_dev);
 }

 bm->page_list = vzalloc(sizeof(*buf) * n_pages);
 if (!bm->page_list)
  goto err;

 if (bm->dma_dir != DMA_NONE) {
  void *virt_addr;
  dma_addr_t dma_addr;





  virt_addr = dma_alloc_coherent(bm->dma_hw_dev,
            PAGE_SIZE * n_pages, &dma_addr,
            GFP_KERNEL);
  if (!virt_addr)
   goto err;

  for (i = 0; i < n_pages; i++) {
   buf = &bm->page_list[i];
   buf->virt_addr = virt_addr + (i << PAGE_SHIFT);
   buf->dma_addr = dma_addr + (i << PAGE_SHIFT);
  }

  bm->n_pages = i;
 } else {
  for (i = 0; i < n_pages; i++) {
   buf = &bm->page_list[i];
   buf->virt_addr = (void *)get_zeroed_page(GFP_KERNEL);
   if (!buf->virt_addr)
    break;

   SetPageReserved(virt_to_page(buf->virt_addr));
  }

  bm->n_pages = i;
  if (i < n_pages)
   goto err;
 }

 return bm;

err:
 comedi_buf_map_put(bm);
 return ((void*)0);
}
