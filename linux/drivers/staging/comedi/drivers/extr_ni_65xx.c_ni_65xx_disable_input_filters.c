
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ NI_65XX_FILTER_ENA (int) ;
 scalar_t__ NI_65XX_FILTER_REG ;
 unsigned int ni_65xx_num_ports (struct comedi_device*) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ni_65xx_disable_input_filters(struct comedi_device *dev)
{
 unsigned int num_ports = ni_65xx_num_ports(dev);
 int i;


 for (i = 0; i < num_ports; ++i)
  writeb(0x00, dev->mmio + NI_65XX_FILTER_ENA(i));


 writel(0x00000000, dev->mmio + NI_65XX_FILTER_REG);
}
