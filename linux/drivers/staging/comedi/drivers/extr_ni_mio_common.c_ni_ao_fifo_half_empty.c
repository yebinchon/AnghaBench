
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_board_struct {int ao_fifo_depth; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_board_struct* board_ptr; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_OVERFLOW ;
 unsigned int comedi_buf_read_n_available (struct comedi_subdevice*) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 int ni_ao_fifo_load (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static int ni_ao_fifo_half_empty(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 const struct ni_board_struct *board = dev->board_ptr;
 unsigned int nbytes;
 unsigned int nsamples;

 nbytes = comedi_buf_read_n_available(s);
 if (nbytes == 0) {
  s->async->events |= COMEDI_CB_OVERFLOW;
  return 0;
 }

 nsamples = comedi_bytes_to_samples(s, nbytes);
 if (nsamples > board->ao_fifo_depth / 2)
  nsamples = board->ao_fifo_depth / 2;

 ni_ao_fifo_load(dev, s, nsamples);

 return 1;
}
