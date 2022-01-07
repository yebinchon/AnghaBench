
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int buf_write_alloc_count; } ;


 unsigned int comedi_buf_write_n_unalloc (struct comedi_subdevice*) ;
 int smp_mb () ;

unsigned int comedi_buf_write_alloc(struct comedi_subdevice *s,
        unsigned int nbytes)
{
 struct comedi_async *async = s->async;
 unsigned int unalloc = comedi_buf_write_n_unalloc(s);

 if (nbytes > unalloc)
  nbytes = unalloc;

 async->buf_write_alloc_count += nbytes;





 smp_mb();

 return nbytes;
}
