
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int dummy; } ;


 int __i8254_write (struct comedi_8254*,unsigned int,unsigned int) ;

void comedi_8254_write(struct comedi_8254 *i8254,
         unsigned int counter, unsigned int val)
{
 unsigned int byte;

 if (counter > 2)
  return;
 if (val > 0xffff)
  return;


 byte = val & 0xff;
 __i8254_write(i8254, byte, counter);
 byte = (val >> 8) & 0xff;
 __i8254_write(i8254, byte, counter);
}
