
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int spin_lock; struct comedi_async* async; } ;
struct comedi_buf_map {scalar_t__ n_pages; } ;
struct comedi_async {struct comedi_buf_map* buf_map; } ;


 int comedi_buf_map_get (struct comedi_buf_map*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct comedi_buf_map *
comedi_buf_map_from_subdev_get(struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_buf_map *bm = ((void*)0);
 unsigned long flags;

 if (!async)
  return ((void*)0);

 spin_lock_irqsave(&s->spin_lock, flags);
 bm = async->buf_map;

 if (bm && bm->n_pages)
  comedi_buf_map_get(bm);
 else
  bm = ((void*)0);
 spin_unlock_irqrestore(&s->spin_lock, flags);

 return bm;
}
