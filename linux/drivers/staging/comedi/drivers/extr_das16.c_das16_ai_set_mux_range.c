
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_board {size_t ai_pg; } ;
struct comedi_device {scalar_t__ iobase; struct das16_board* board_ptr; } ;


 scalar_t__ DAS16_GAIN_REG ;
 scalar_t__ DAS16_MUX_REG ;
 unsigned int** das16_gainlists ;
 size_t das16_pg_none ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void das16_ai_set_mux_range(struct comedi_device *dev,
       unsigned int first_chan,
       unsigned int last_chan,
       unsigned int range)
{
 const struct das16_board *board = dev->board_ptr;


 outb(first_chan | (last_chan << 4), dev->iobase + DAS16_MUX_REG);


 if (board->ai_pg == das16_pg_none)
  return;






 outb((das16_gainlists[board->ai_pg])[range],
      dev->iobase + DAS16_GAIN_REG);
}
