
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int divisor; int next_div; int divisor1; int next_div1; int divisor2; int next_div2; } ;



void comedi_8254_update_divisors(struct comedi_8254 *i8254)
{

 i8254->divisor = i8254->next_div & 0xffff;
 i8254->divisor1 = i8254->next_div1 & 0xffff;
 i8254->divisor2 = i8254->next_div2 & 0xffff;
}
