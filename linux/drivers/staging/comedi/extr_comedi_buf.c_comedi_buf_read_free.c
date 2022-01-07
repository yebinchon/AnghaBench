
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int buf_read_count; unsigned int buf_read_ptr; unsigned int prealloc_bufsz; } ;


 unsigned int comedi_buf_read_n_allocated (struct comedi_async*) ;
 int smp_mb () ;

unsigned int comedi_buf_read_free(struct comedi_subdevice *s,
      unsigned int nbytes)
{
 struct comedi_async *async = s->async;
 unsigned int allocated;





 smp_mb();

 allocated = comedi_buf_read_n_allocated(async);
 if (nbytes > allocated)
  nbytes = allocated;

 async->buf_read_count += nbytes;
 async->buf_read_ptr += nbytes;
 async->buf_read_ptr %= async->prealloc_bufsz;
 return nbytes;
}
