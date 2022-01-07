
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {unsigned int iosize; unsigned int regshift; int iobase; int mmio; } ;





 unsigned int inb (int ) ;
 unsigned int inl (int ) ;
 unsigned int inw (int ) ;
 unsigned int readb (int ) ;
 unsigned int readl (int ) ;
 unsigned int readw (int ) ;

__attribute__((used)) static unsigned int __i8254_read(struct comedi_8254 *i8254, unsigned int reg)
{
 unsigned int reg_offset = (reg * i8254->iosize) << i8254->regshift;
 unsigned int val;

 switch (i8254->iosize) {
 default:
 case 128:
  if (i8254->mmio)
   val = readb(i8254->mmio + reg_offset);
  else
   val = inb(i8254->iobase + reg_offset);
  break;
 case 130:
  if (i8254->mmio)
   val = readw(i8254->mmio + reg_offset);
  else
   val = inw(i8254->iobase + reg_offset);
  break;
 case 129:
  if (i8254->mmio)
   val = readl(i8254->mmio + reg_offset);
  else
   val = inl(i8254->iobase + reg_offset);
  break;
 }
 return val & 0xff;
}
