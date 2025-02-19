
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_board_struct {int ai_fifo_depth; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_board_struct* board_ptr; } ;


 int ni_ai_fifo_read (struct comedi_device*,struct comedi_subdevice*,int) ;

__attribute__((used)) static void ni_handle_fifo_half_full(struct comedi_device *dev)
{
 const struct ni_board_struct *board = dev->board_ptr;
 struct comedi_subdevice *s = dev->read_subdev;
 int n;

 n = board->ai_fifo_depth / 2;

 ni_ai_fifo_read(dev, s, n);
}
