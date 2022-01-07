
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {int layout; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;





 int caldac_8800_write (struct comedi_device*,unsigned int,unsigned int) ;
 int caldac_i2c_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static void caldac_write(struct comedi_device *dev, unsigned int channel,
    unsigned int value)
{
 const struct pcidas64_board *board = dev->board_ptr;

 switch (board->layout) {
 case 129:
 case 128:
  caldac_8800_write(dev, channel, value);
  break;
 case 130:
  caldac_i2c_write(dev, channel, value);
  break;
 default:
  break;
 }
}
