
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;




 int EINVAL ;


 int ni_65xx_disable_edge_detection (struct comedi_device*) ;
 int ni_65xx_update_edge_detection (struct comedi_device*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_65xx_intr_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 switch (data[0]) {
 case 129:

  if (insn->n != 3)
   return -EINVAL;


  ni_65xx_update_edge_detection(dev, 0, data[1], data[2]);

  ni_65xx_update_edge_detection(dev, 32, 0, 0);

  ni_65xx_update_edge_detection(dev, 64, 0, 0);
  break;
 case 128:

  if (data[1] != 0)
   return -EINVAL;

  switch (data[2]) {
  case 131:
   ni_65xx_disable_edge_detection(dev);
   break;
  case 130:




   ni_65xx_update_edge_detection(dev, data[3],
            data[4], data[5]);
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
