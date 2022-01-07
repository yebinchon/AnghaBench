
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void s626_mc_disable(struct comedi_device *dev,
       unsigned int cmd, unsigned int reg)
{
 writel(cmd << 16, dev->mmio + reg);
}
