
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {int layout; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;


 int EINVAL ;

 int ai_config_master_clock_4020 (struct comedi_device*,unsigned int*) ;

__attribute__((used)) static int ai_config_master_clock(struct comedi_device *dev, unsigned int *data)
{
 const struct pcidas64_board *board = dev->board_ptr;

 switch (board->layout) {
 case 128:
  return ai_config_master_clock_4020(dev, data);
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
