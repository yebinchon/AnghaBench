
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;
 unsigned int INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS ;
 unsigned int NSEC_PER_USEC ;

__attribute__((used)) static int waveform_ao_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 if (data[0] == INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS) {

  data[1] = NSEC_PER_USEC;
  data[2] = 0;
  return 0;
 }

 return -EINVAL;
}
