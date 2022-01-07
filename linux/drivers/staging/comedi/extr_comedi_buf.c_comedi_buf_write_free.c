
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int buf_write_ptr; unsigned int prealloc_bufsz; scalar_t__ munge_count; scalar_t__ buf_write_count; } ;


 int comedi_buf_munge (struct comedi_subdevice*,scalar_t__) ;
 unsigned int comedi_buf_write_n_allocated (struct comedi_subdevice*) ;

unsigned int comedi_buf_write_free(struct comedi_subdevice *s,
       unsigned int nbytes)
{
 struct comedi_async *async = s->async;
 unsigned int allocated = comedi_buf_write_n_allocated(s);

 if (nbytes > allocated)
  nbytes = allocated;

 async->buf_write_count += nbytes;
 async->buf_write_ptr += nbytes;
 comedi_buf_munge(s, async->buf_write_count - async->munge_count);
 if (async->buf_write_ptr >= async->prealloc_bufsz)
  async->buf_write_ptr %= async->prealloc_bufsz;

 return nbytes;
}
