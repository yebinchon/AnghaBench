
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int EBUSY ;
 unsigned int ME_STATUS_ADFIFO_EMPTY ;
 scalar_t__ ME_STATUS_REG ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static int me_ai_eoc(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned long context)
{
 unsigned int status;

 status = readw(dev->mmio + ME_STATUS_REG);
 if ((status & ME_STATUS_ADFIFO_EMPTY) == 0)
  return 0;
 return -EBUSY;
}
