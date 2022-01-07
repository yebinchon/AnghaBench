
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_ring {unsigned int n_links; struct mite_dma_desc* descs; int dma_addr; int hw_dev; } ;
struct mite_dma_desc {int dummy; } ;
struct comedi_subdevice {TYPE_1__* device; struct comedi_async* async; } ;
struct comedi_async {unsigned int prealloc_bufsz; } ;
struct TYPE_2__ {int class_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_SHIFT ;
 int dev_err (int ,char*) ;
 struct mite_dma_desc* dma_alloc_coherent (int ,unsigned int,int *,int ) ;
 int mite_free_dma_descs (struct mite_ring*) ;
 int mite_init_ring_descriptors (struct mite_ring*,struct comedi_subdevice*,unsigned int) ;

int mite_buf_change(struct mite_ring *ring, struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct mite_dma_desc *descs;
 unsigned int n_links;

 mite_free_dma_descs(ring);

 if (async->prealloc_bufsz == 0)
  return 0;

 n_links = async->prealloc_bufsz >> PAGE_SHIFT;

 descs = dma_alloc_coherent(ring->hw_dev,
       n_links * sizeof(*descs),
       &ring->dma_addr, GFP_KERNEL);
 if (!descs) {
  dev_err(s->device->class_dev,
   "mite: ring buffer allocation failed\n");
  return -ENOMEM;
 }
 ring->descs = descs;
 ring->n_links = n_links;

 return mite_init_ring_descriptors(ring, s, n_links << PAGE_SHIFT);
}
