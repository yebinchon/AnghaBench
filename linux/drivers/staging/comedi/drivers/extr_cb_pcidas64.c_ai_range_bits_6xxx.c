
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {int* ai_range_code; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;



__attribute__((used)) static unsigned int ai_range_bits_6xxx(const struct comedi_device *dev,
           unsigned int range_index)
{
 const struct pcidas64_board *board = dev->board_ptr;

 return board->ai_range_code[range_index] << 8;
}
