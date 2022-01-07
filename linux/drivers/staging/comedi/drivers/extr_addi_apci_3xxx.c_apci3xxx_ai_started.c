
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static int apci3xxx_ai_started(struct comedi_device *dev)
{
 if ((readl(dev->mmio + 8) & 0x80000) == 0x80000)
  return 1;

 return 0;
}
