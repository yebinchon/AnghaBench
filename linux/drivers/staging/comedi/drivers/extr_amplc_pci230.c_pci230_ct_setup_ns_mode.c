
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct comedi_device {int pacer; scalar_t__ iobase; } ;


 scalar_t__ PCI230_ZCLK_SCE ;
 int comedi_8254_set_mode (int ,unsigned int,unsigned int) ;
 int comedi_8254_write (int ,unsigned int,unsigned int) ;
 int outb (int ,scalar_t__) ;
 unsigned int pci230_choose_clk_count (int ,unsigned int*,unsigned int) ;
 int pci230_clk_config (unsigned int,unsigned int) ;

__attribute__((used)) static void pci230_ct_setup_ns_mode(struct comedi_device *dev, unsigned int ct,
        unsigned int mode, u64 ns,
        unsigned int flags)
{
 unsigned int clk_src;
 unsigned int count;


 comedi_8254_set_mode(dev->pacer, ct, mode);

 clk_src = pci230_choose_clk_count(ns, &count, flags);

 outb(pci230_clk_config(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);

 if (count >= 65536)
  count = 0;

 comedi_8254_write(dev->pacer, ct, count);
}
