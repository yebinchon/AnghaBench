
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_channel {scalar_t__ dir; } ;
struct comedi_subdevice {int dummy; } ;


 scalar_t__ COMEDI_INPUT ;
 int mite_sync_input_dma (struct mite_channel*,struct comedi_subdevice*) ;
 int mite_sync_output_dma (struct mite_channel*,struct comedi_subdevice*) ;

void mite_sync_dma(struct mite_channel *mite_chan, struct comedi_subdevice *s)
{
 if (mite_chan->dir == COMEDI_INPUT)
  mite_sync_input_dma(mite_chan, s);
 else
  mite_sync_output_dma(mite_chan, s);
}
