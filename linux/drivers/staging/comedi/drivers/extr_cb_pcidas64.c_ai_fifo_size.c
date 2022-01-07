
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcidas64_private {unsigned int ai_fifo_segment_length; } ;
struct pcidas64_board {TYPE_1__* ai_fifo; } ;
struct comedi_device {struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;
struct TYPE_2__ {unsigned int num_segments; unsigned int sample_packing_ratio; } ;



__attribute__((used)) static unsigned int ai_fifo_size(struct comedi_device *dev)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;

 return devpriv->ai_fifo_segment_length *
        board->ai_fifo->num_segments *
        board->ai_fifo->sample_packing_ratio;
}
