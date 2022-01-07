
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_device* comedi_clear_board_minor (unsigned int) ;
 int comedi_free_board_dev (struct comedi_device*) ;

__attribute__((used)) static void comedi_cleanup_board_minors(void)
{
 struct comedi_device *dev;
 unsigned int i;

 for (i = 0; i < COMEDI_NUM_BOARD_MINORS; i++) {
  dev = comedi_clear_board_minor(i);
  comedi_free_board_dev(dev);
 }
}
