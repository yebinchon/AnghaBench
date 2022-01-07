
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int munge_count; unsigned int buf_read_alloc_count; } ;


 int smp_rmb () ;

unsigned int comedi_buf_read_alloc(struct comedi_subdevice *s,
       unsigned int nbytes)
{
 struct comedi_async *async = s->async;
 unsigned int available;

 available = async->munge_count - async->buf_read_alloc_count;
 if (nbytes > available)
  nbytes = available;

 async->buf_read_alloc_count += nbytes;





 smp_rmb();

 return nbytes;
}
