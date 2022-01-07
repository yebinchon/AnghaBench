
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {unsigned int iosize; unsigned int regshift; int iobase; int mmio; } ;





 int outb (unsigned int,int ) ;
 int outl (unsigned int,int ) ;
 int outw (unsigned int,int ) ;
 int writeb (unsigned int,int ) ;
 int writel (unsigned int,int ) ;
 int writew (unsigned int,int ) ;

__attribute__((used)) static void __i8254_write(struct comedi_8254 *i8254,
     unsigned int val, unsigned int reg)
{
 unsigned int reg_offset = (reg * i8254->iosize) << i8254->regshift;

 switch (i8254->iosize) {
 default:
 case 128:
  if (i8254->mmio)
   writeb(val, i8254->mmio + reg_offset);
  else
   outb(val, i8254->iobase + reg_offset);
  break;
 case 130:
  if (i8254->mmio)
   writew(val, i8254->mmio + reg_offset);
  else
   outw(val, i8254->iobase + reg_offset);
  break;
 case 129:
  if (i8254->mmio)
   writel(val, i8254->mmio + reg_offset);
  else
   outl(val, i8254->iobase + reg_offset);
  break;
 }
}
