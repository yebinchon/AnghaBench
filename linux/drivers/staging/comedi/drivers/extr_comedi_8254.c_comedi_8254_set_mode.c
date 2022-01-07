
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int dummy; } ;


 int EINVAL ;
 unsigned int I8254_BCD ;
 unsigned int I8254_CTRL_LSB_MSB ;
 int I8254_CTRL_REG ;
 unsigned int I8254_CTRL_SEL_CTR (unsigned int) ;
 unsigned int I8254_MODE5 ;
 int __i8254_write (struct comedi_8254*,unsigned int,int ) ;

int comedi_8254_set_mode(struct comedi_8254 *i8254, unsigned int counter,
    unsigned int mode)
{
 unsigned int byte;

 if (counter > 2)
  return -EINVAL;
 if (mode > (I8254_MODE5 | I8254_BCD))
  return -EINVAL;

 byte = I8254_CTRL_SEL_CTR(counter) |
        I8254_CTRL_LSB_MSB |
        mode;
 __i8254_write(i8254, byte, I8254_CTRL_REG);

 return 0;
}
