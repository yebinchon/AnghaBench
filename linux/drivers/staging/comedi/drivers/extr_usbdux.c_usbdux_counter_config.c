
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;



__attribute__((used)) static int usbdux_counter_config(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{

 return 2;
}
