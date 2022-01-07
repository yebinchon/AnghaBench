
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {int layout; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int dummy; } ;



 int select_master_clock_4020 (struct comedi_device*,struct comedi_cmd const*) ;

__attribute__((used)) static void select_master_clock(struct comedi_device *dev,
    const struct comedi_cmd *cmd)
{
 const struct pcidas64_board *board = dev->board_ptr;

 switch (board->layout) {
 case 128:
  select_master_clock_4020(dev, cmd);
  break;
 default:
  break;
 }
}
