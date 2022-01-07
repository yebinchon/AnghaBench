
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;



 int ai_config_block_size (struct comedi_device*,unsigned int*) ;
 int ai_config_calibration_source (struct comedi_device*,unsigned int*) ;
 int ai_config_master_clock (struct comedi_device*,unsigned int*) ;

__attribute__((used)) static int ai_config_insn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int id = data[0];

 switch (id) {
 case 130:
  return ai_config_calibration_source(dev, data);
 case 129:
  return ai_config_block_size(dev, data);
 case 128:
  return ai_config_master_clock(dev, data);
 default:
  return -EINVAL;
 }
 return -EINVAL;
}
