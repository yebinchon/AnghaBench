
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EBUSY ;
 unsigned int labpc_eeprom_read_status (struct comedi_device*) ;

__attribute__((used)) static int labpc_eeprom_ready(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned long context)
{
 unsigned int status;


 status = labpc_eeprom_read_status(dev);
 if ((status & 0x1) == 0)
  return 0;
 return -EBUSY;
}
