
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;


 scalar_t__ LAYOUT_4020 ;
 int pio_drain_ai_fifo_16 (struct comedi_device*) ;
 int pio_drain_ai_fifo_32 (struct comedi_device*) ;

__attribute__((used)) static void pio_drain_ai_fifo(struct comedi_device *dev)
{
 const struct pcidas64_board *board = dev->board_ptr;

 if (board->layout == LAYOUT_4020)
  pio_drain_ai_fifo_32(dev);
 else
  pio_drain_ai_fifo_16(dev);
}
