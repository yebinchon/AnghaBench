
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int munge_count; unsigned int buf_read_count; } ;


 int smp_rmb () ;

unsigned int comedi_buf_read_n_available(struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 unsigned int num_bytes;

 if (!async)
  return 0;

 num_bytes = async->munge_count - async->buf_read_count;





 smp_rmb();

 return num_bytes;
}
