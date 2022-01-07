
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_buf_map {int refcount; } ;
struct TYPE_2__ {struct comedi_buf_map* buf_map; } ;


 int kref_read (int *) ;

bool comedi_buf_is_mmapped(struct comedi_subdevice *s)
{
 struct comedi_buf_map *bm = s->async->buf_map;

 return bm && (kref_read(&bm->refcount) > 1);
}
