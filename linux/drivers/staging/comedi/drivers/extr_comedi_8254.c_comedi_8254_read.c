
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int dummy; } ;


 int I8254_CTRL_LATCH ;
 int I8254_CTRL_REG ;
 int I8254_CTRL_SEL_CTR (unsigned int) ;
 int __i8254_read (struct comedi_8254*,unsigned int) ;
 int __i8254_write (struct comedi_8254*,int,int ) ;

unsigned int comedi_8254_read(struct comedi_8254 *i8254, unsigned int counter)
{
 unsigned int val;

 if (counter > 2)
  return 0;


 __i8254_write(i8254, I8254_CTRL_SEL_CTR(counter) | I8254_CTRL_LATCH,
        I8254_CTRL_REG);


 val = __i8254_read(i8254, counter);
 val |= (__i8254_read(i8254, counter) << 8);

 return val;
}
