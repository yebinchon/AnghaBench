
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_async {unsigned int buf_read_count; unsigned int prealloc_bufsz; unsigned int buf_write_count; } ;



unsigned int comedi_buf_write_n_available(struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 unsigned int free_end = async->buf_read_count + async->prealloc_bufsz;

 return free_end - async->buf_write_count;
}
