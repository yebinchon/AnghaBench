
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int EBUSY ;
 unsigned int FS_ADC_NOT_EMPTY ;
 scalar_t__ LAS0_ADC ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int rtd_ai_eoc(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned long context)
{
 unsigned int status;

 status = readl(dev->mmio + LAS0_ADC);
 if (status & FS_ADC_NOT_EMPTY)
  return 0;
 return -EBUSY;
}
