
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ mmio; } ;
struct TYPE_2__ {unsigned int offset; int size; } ;


 unsigned int NI660X_CHIP_OFFSET ;
 TYPE_1__* ni_660x_reg_data ;
 unsigned int readl (scalar_t__) ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static unsigned int ni_660x_read(struct comedi_device *dev,
     unsigned int chip, unsigned int reg)
{
 unsigned int addr = (chip * NI660X_CHIP_OFFSET) +
       ni_660x_reg_data[reg].offset;

 if (ni_660x_reg_data[reg].size == 2)
  return readw(dev->mmio + addr);
 return readl(dev->mmio + addr);
}
