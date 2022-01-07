
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static bool s626_mc_test(struct comedi_device *dev,
    unsigned int cmd, unsigned int reg)
{
 unsigned int val;

 val = readl(dev->mmio + reg);

 return (val & cmd) ? 1 : 0;
}
