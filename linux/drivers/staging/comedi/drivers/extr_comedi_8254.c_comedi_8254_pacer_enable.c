
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int divisor1; int divisor2; } ;


 unsigned int I8254_BINARY ;
 unsigned int I8254_MODE0 ;
 unsigned int I8254_MODE2 ;
 int comedi_8254_set_mode (struct comedi_8254*,unsigned int,unsigned int) ;
 int comedi_8254_write (struct comedi_8254*,unsigned int,int ) ;

void comedi_8254_pacer_enable(struct comedi_8254 *i8254,
         unsigned int counter1,
         unsigned int counter2,
         bool enable)
{
 unsigned int mode;

 if (counter1 > 2 || counter2 > 2 || counter1 == counter2)
  return;

 if (enable)
  mode = I8254_MODE2 | I8254_BINARY;
 else
  mode = I8254_MODE0 | I8254_BINARY;

 comedi_8254_set_mode(i8254, counter1, mode);
 comedi_8254_set_mode(i8254, counter2, mode);

 if (enable) {





  comedi_8254_write(i8254, counter2, i8254->divisor2);
  comedi_8254_write(i8254, counter1, i8254->divisor1);
 }
}
