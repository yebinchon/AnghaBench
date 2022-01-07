
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_channel {int dummy; } ;
struct comedi_subdevice {TYPE_1__* device; struct comedi_async* async; } ;
struct comedi_async {unsigned int buf_write_alloc_count; unsigned int buf_write_count; int events; int prealloc_bufsz; } ;
struct TYPE_2__ {int class_dev; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_OVERFLOW ;
 int comedi_buf_write_alloc (struct comedi_subdevice*,int ) ;
 int comedi_buf_write_free (struct comedi_subdevice*,int) ;
 int comedi_inc_scan_progress (struct comedi_subdevice*,int) ;
 int dev_warn (int ,char*) ;
 unsigned int mite_bytes_written_to_memory_lb (struct mite_channel*) ;
 unsigned int mite_bytes_written_to_memory_ub (struct mite_channel*) ;

__attribute__((used)) static void mite_sync_input_dma(struct mite_channel *mite_chan,
    struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 int count;
 unsigned int nbytes, old_alloc_count;

 old_alloc_count = async->buf_write_alloc_count;

 comedi_buf_write_alloc(s, async->prealloc_bufsz);

 nbytes = mite_bytes_written_to_memory_lb(mite_chan);
 if ((int)(mite_bytes_written_to_memory_ub(mite_chan) -
    old_alloc_count) > 0) {
  dev_warn(s->device->class_dev,
    "mite: DMA overwrite of free area\n");
  async->events |= COMEDI_CB_OVERFLOW;
  return;
 }

 count = nbytes - async->buf_write_count;




 if (count > 0) {
  comedi_buf_write_free(s, count);
  comedi_inc_scan_progress(s, count);
  async->events |= COMEDI_CB_BLOCK;
 }
}
