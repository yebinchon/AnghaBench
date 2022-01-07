
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct mite_channel {int dummy; } ;
struct comedi_subdevice {TYPE_1__* device; struct comedi_async* async; } ;
struct comedi_cmd {unsigned int stop_arg; scalar_t__ stop_src; } ;
struct comedi_async {unsigned int buf_read_alloc_count; unsigned int buf_read_count; int events; int prealloc_bufsz; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int class_dev; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_OVERFLOW ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_NONE ;
 int comedi_buf_read_alloc (struct comedi_subdevice*,int ) ;
 int comedi_buf_read_free (struct comedi_subdevice*,int) ;
 unsigned int comedi_bytes_per_scan (struct comedi_subdevice*) ;
 int dev_warn (int ,char*) ;
 unsigned int mite_bytes_read_from_memory_lb (struct mite_channel*) ;
 unsigned int mite_bytes_read_from_memory_ub (struct mite_channel*) ;

__attribute__((used)) static void mite_sync_output_dma(struct mite_channel *mite_chan,
     struct comedi_subdevice *s)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 u32 stop_count = cmd->stop_arg * comedi_bytes_per_scan(s);
 unsigned int old_alloc_count = async->buf_read_alloc_count;
 u32 nbytes_ub, nbytes_lb;
 int count;
 bool finite_regen = (cmd->stop_src == TRIG_NONE && stop_count != 0);


 comedi_buf_read_alloc(s, async->prealloc_bufsz);
 nbytes_lb = mite_bytes_read_from_memory_lb(mite_chan);
 if (cmd->stop_src == TRIG_COUNT && (int)(nbytes_lb - stop_count) > 0)
  nbytes_lb = stop_count;
 nbytes_ub = mite_bytes_read_from_memory_ub(mite_chan);
 if (cmd->stop_src == TRIG_COUNT && (int)(nbytes_ub - stop_count) > 0)
  nbytes_ub = stop_count;

 if ((!finite_regen || stop_count > old_alloc_count) &&
     ((int)(nbytes_ub - old_alloc_count) > 0)) {
  dev_warn(s->device->class_dev, "mite: DMA underrun\n");
  async->events |= COMEDI_CB_OVERFLOW;
  return;
 }

 if (finite_regen) {






  return;
 }

 count = nbytes_lb - async->buf_read_count;
 if (count > 0) {
  comedi_buf_read_free(s, count);
  async->events |= COMEDI_CB_BLOCK;
 }
}
