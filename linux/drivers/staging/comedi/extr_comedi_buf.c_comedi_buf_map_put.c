
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_buf_map {int refcount; } ;


 int comedi_buf_map_kref_release ;
 int kref_put (int *,int ) ;

int comedi_buf_map_put(struct comedi_buf_map *bm)
{
 if (bm)
  return kref_put(&bm->refcount, comedi_buf_map_kref_release);
 return 1;
}
