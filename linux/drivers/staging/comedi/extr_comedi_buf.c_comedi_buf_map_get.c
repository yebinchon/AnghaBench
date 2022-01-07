
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_buf_map {int refcount; } ;


 int kref_get (int *) ;

void comedi_buf_map_get(struct comedi_buf_map *bm)
{
 if (bm)
  kref_get(&bm->refcount);
}
