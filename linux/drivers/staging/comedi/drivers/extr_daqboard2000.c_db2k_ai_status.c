
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ DB2K_REG_ACQ_STATUS ;
 int EBUSY ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static int db2k_ai_status(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned long context)
{
 unsigned int status;

 status = readw(dev->mmio + DB2K_REG_ACQ_STATUS);
 if (status & context)
  return 0;
 return -EBUSY;
}
