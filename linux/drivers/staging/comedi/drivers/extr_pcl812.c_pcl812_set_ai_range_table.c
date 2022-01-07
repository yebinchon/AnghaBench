
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {int range_correction; } ;
struct pcl812_board {int board_type; int * rangelist_ai; } ;
struct comedi_subdevice {int * range_table; } ;
struct comedi_device {struct pcl812_private* private; struct pcl812_board* board_ptr; } ;
struct comedi_devconfig {int* options; } ;







 int range812_bipolar0_3125 ;
 int range812_bipolar0_625 ;
 int range812_bipolar1_25 ;
 int range_acl8113_1_2_ai ;
 int range_acl8113_1_ai ;
 int range_acl8113_2_2_ai ;
 int range_acl8113_2_ai ;
 int range_bipolar10 ;
 int range_bipolar2_5 ;
 int range_bipolar5 ;
 int range_iso813_1_2_ai ;
 int range_iso813_1_ai ;
 int range_iso813_2_2_ai ;
 int range_iso813_2_ai ;
 int range_pcl812pg2_ai ;
 int range_pcl813b2_ai ;

__attribute__((used)) static void pcl812_set_ai_range_table(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_devconfig *it)
{
 const struct pcl812_board *board = dev->board_ptr;
 struct pcl812_private *devpriv = dev->private;

 switch (board->board_type) {
 case 129:
  if (it->options[4] == 1)
   s->range_table = &range_pcl812pg2_ai;
  else
   s->range_table = board->rangelist_ai;
  break;
 case 130:
  switch (it->options[4]) {
  case 0:
   s->range_table = &range_bipolar10;
   break;
  case 1:
   s->range_table = &range_bipolar5;
   break;
  case 2:
   s->range_table = &range_bipolar2_5;
   break;
  case 3:
   s->range_table = &range812_bipolar1_25;
   break;
  case 4:
   s->range_table = &range812_bipolar0_625;
   break;
  case 5:
   s->range_table = &range812_bipolar0_3125;
   break;
  default:
   s->range_table = &range_bipolar10;
   break;
  }
  break;
 case 128:
  if (it->options[1] == 1)
   s->range_table = &range_pcl813b2_ai;
  else
   s->range_table = board->rangelist_ai;
  break;
 case 131:
  switch (it->options[1]) {
  case 0:
   s->range_table = &range_iso813_1_ai;
   break;
  case 1:
   s->range_table = &range_iso813_1_2_ai;
   break;
  case 2:
   s->range_table = &range_iso813_2_ai;
   devpriv->range_correction = 1;
   break;
  case 3:
   s->range_table = &range_iso813_2_2_ai;
   devpriv->range_correction = 1;
   break;
  default:
   s->range_table = &range_iso813_1_ai;
   break;
  }
  break;
 case 132:
  switch (it->options[1]) {
  case 0:
   s->range_table = &range_acl8113_1_ai;
   break;
  case 1:
   s->range_table = &range_acl8113_1_2_ai;
   break;
  case 2:
   s->range_table = &range_acl8113_2_ai;
   devpriv->range_correction = 1;
   break;
  case 3:
   s->range_table = &range_acl8113_2_2_ai;
   devpriv->range_correction = 1;
   break;
  default:
   s->range_table = &range_acl8113_1_ai;
   break;
  }
  break;
 default:
  s->range_table = board->rangelist_ai;
  break;
 }
}
