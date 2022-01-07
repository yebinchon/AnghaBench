
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ async_dma_dir; int spin_lock; struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_buf_map {int dummy; } ;
struct comedi_async {struct comedi_buf_map* buf_map; scalar_t__ prealloc_bufsz; int * prealloc_buf; } ;


 scalar_t__ DMA_NONE ;
 int comedi_buf_map_put (struct comedi_buf_map*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vunmap (int *) ;

__attribute__((used)) static void __comedi_buf_free(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_buf_map *bm;
 unsigned long flags;

 if (async->prealloc_buf) {
  if (s->async_dma_dir == DMA_NONE)
   vunmap(async->prealloc_buf);
  async->prealloc_buf = ((void*)0);
  async->prealloc_bufsz = 0;
 }

 spin_lock_irqsave(&s->spin_lock, flags);
 bm = async->buf_map;
 async->buf_map = ((void*)0);
 spin_unlock_irqrestore(&s->spin_lock, flags);
 comedi_buf_map_put(bm);
}
