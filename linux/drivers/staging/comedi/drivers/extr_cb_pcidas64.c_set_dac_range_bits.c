
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pcidas64_board {unsigned int* ao_range_code; } ;
struct comedi_device {int class_dev; struct pcidas64_board* board_ptr; } ;


 int dev_err (int ,char*) ;

__attribute__((used)) static void set_dac_range_bits(struct comedi_device *dev,
          u16 *bits, unsigned int channel,
          unsigned int range)
{
 const struct pcidas64_board *board = dev->board_ptr;
 unsigned int code = board->ao_range_code[range];

 if (channel > 1)
  dev_err(dev->class_dev, "bug! bad channel?\n");
 if (code & ~0x3)
  dev_err(dev->class_dev, "bug! bad range code?\n");

 *bits &= ~(0x3 << (2 * channel));
 *bits |= code << (2 * channel);
}
