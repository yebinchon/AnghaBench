
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_device* comedi_dev_get_from_board_minor (unsigned int) ;
 struct comedi_device* comedi_dev_get_from_subdevice_minor (unsigned int) ;

struct comedi_device *comedi_dev_get_from_minor(unsigned int minor)
{
 if (minor < COMEDI_NUM_BOARD_MINORS)
  return comedi_dev_get_from_board_minor(minor);

 return comedi_dev_get_from_subdevice_minor(minor);
}
